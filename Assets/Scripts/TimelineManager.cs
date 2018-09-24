using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using UnityEngine;

//Priority Queue taken from VS Magazine
//https://visualstudiomagazine.com/articles/2012/11/01/priority-queues-with-c.aspx

public class PriorityQueue<T> where T : IComparable<T>
{
    private List<T> data;

    public PriorityQueue()
    {
        this.data = new List<T>();
    }

    public bool Contains(T item)
    {
        return data.Contains(item);
    }

    public void Enqueue(T item)
    {
        data.Add(item);
        int ci = data.Count - 1; // child index; start at end
        while (ci > 0)
        {
            int pi = (ci - 1) / 2; // parent index
            if (data[ci].CompareTo(data[pi]) >= 0) break; // child item is larger than (or equal) parent so we're done
            T tmp = data[ci]; data[ci] = data[pi]; data[pi] = tmp;
            ci = pi;
        }
    }

    public T Dequeue()
    {
        // assumes pq is not empty; up to calling code
        int li = data.Count - 1; // last index (before removal)
        T frontItem = data[0];   // fetch the front
        data[0] = data[li];
        data.RemoveAt(li);

        --li; // last index (after removal)
        int pi = 0; // parent index. start at front of pq
        while (true)
        {
            int ci = pi * 2 + 1; // left child index of parent
            if (ci > li) break;  // no children so done
            int rc = ci + 1;     // right child
            if (rc <= li && data[rc].CompareTo(data[ci]) < 0) // if there is a rc (ci + 1), and it is smaller than left child, use the rc instead
                ci = rc;
            if (data[pi].CompareTo(data[ci]) <= 0) break; // parent is smaller than (or equal to) smallest child so done
            T tmp = data[pi]; data[pi] = data[ci]; data[ci] = tmp; // swap parent and child
            pi = ci;
        }
        return frontItem;
    }

    public T Peek()
    {
        T frontItem = data[0];
        return frontItem;
    }

    public int Count()
    {
        return data.Count;
    }

    public override string ToString()
    {
        string s = "";
        for (int i = 0; i < data.Count; ++i)
            s += data[i].ToString() + " ";
        s += "count = " + data.Count;
        return s;
    }

    public bool IsConsistent()
    {
        // is the heap property true for all data?
        if (data.Count == 0) return true;
        int li = data.Count - 1; // last index
        for (int pi = 0; pi < data.Count; ++pi) // each parent index
        {
            int lci = 2 * pi + 1; // left child index
            int rci = 2 * pi + 2; // right child index

            if (lci <= li && data[pi].CompareTo(data[lci]) > 0) return false; // if lc exists and it's greater than parent then bad.
            if (rci <= li && data[pi].CompareTo(data[rci]) > 0) return false; // check the right child too.
        }
        return true; // passed all checks
    } // IsConsistent
} // PriorityQueue

[System.Serializable]
public class GameEvent : IComparable<GameEvent>
{
    //This is the time in the running of the game that the event should be displayed
    public float GameTimeToBeActivated;
    //The string payload of the event
    public string Content;
    //The "fake" in-world time that the message should show up as having arrived (e.g. "4:56 pm, 6 Jun 2016")
    public string DisplayTime;
    //The name of the character who sent this event
    public string CharacterName;
    //The channel this chat belongs to - either "group" or the character name
    public string Channel;

    public string AbsoluteTimeString;

    public bool ShouldWaitAfter;

    public int CompareTo(GameEvent other)
    {
        if (this.GameTimeToBeActivated < other.GameTimeToBeActivated)
        {
            return -1;
        }
        else if (this.GameTimeToBeActivated > other.GameTimeToBeActivated)
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
}

[System.Serializable]
public class ChoiceEvent : GameEvent
{
    public List<string> Choices;
}

public enum ImageOrientation
{
    LANDSCAPE,
    PORTRAIT,
}

[System.Serializable]
public class ImageEvent : GameEvent
{
    public string ImageName;
}

[System.Serializable]
public class SaveData
{
    public float CurrentGameEventTime = 0.0f;
    public float CurrentGameRealTime = 0.0f;
    public string PlayerName = "";
    public Pronoun PlayerPronoun;
    public string GroupInkJSON;
    public string HemaInkJSON;
    public string KalilInkJSON;
    public string AnettaInkJSON;
    public string JessieInkJSON;
    public string TanyaInkJSON;
    public string JimmyInkJSON;
    public string MorganInkJSON;
    public string KyleInkJSON;

    public bool PartyAnetta;

    public List<GameEvent> PastGameEvents;
}


//This class handles timing for the game. 
//It handles displaying the next message or event that comes in, and keeps track of where we are in the game currently
//It keeps a queue of messages to display, fed by the InkManager, and when it is time to display them it sends them to the DisplayManager
public class TimelineManager : MonoBehaviour
{
    bool Initialized = false;
    public bool LoadSaves = false;
    //TODO: I think this will need to look at system time, because this will not increment when we're in pause mode
    float CurrentGameRealTime = 0.0f;

    float CurrentGameEventTime = 0.0f;

    public float StartingGameEventTime = 23280.0f;

    GameEvent CurrentGameEvent;

    Dictionary<string, PriorityQueue<GameEvent>> Queues;

    int WaitingOnChoiceCount = 0;
    Dictionary<string, int> ChannelWaitCounts;
    int TotalWaitCount = 0;

    [HideInInspector]
    public bool WaitingForNameInput = true;

    //Value to speed up the game, for debug purposes only.
    float DebugTimeFactor = 1.0f;

    List<GameEvent> PastEvents;

    // Use this for initialization
    void Start ()
    {
        ChannelWaitCounts = new Dictionary<string, int>();

        PastEvents = new List<GameEvent>();

        Queues = new Dictionary<string, PriorityQueue<GameEvent>>();
        PriorityQueue<GameEvent> GroupQueue = new PriorityQueue<GameEvent>();
        Queues.Add("Group", GroupQueue);
        PriorityQueue<GameEvent> AnettaQueue = new PriorityQueue<GameEvent>();
        Queues.Add("Anetta", AnettaQueue);
        PriorityQueue<GameEvent> KalilQueue = new PriorityQueue<GameEvent>();
        Queues.Add("Kalil", KalilQueue);
        PriorityQueue<GameEvent> HemaQueue = new PriorityQueue<GameEvent>();
        Queues.Add("Hema", HemaQueue);
        PriorityQueue<GameEvent> JessieQueue = new PriorityQueue<GameEvent>();
        Queues.Add("Jessie", JessieQueue);
        PriorityQueue<GameEvent> TanyaQueue = new PriorityQueue<GameEvent>();
        Queues.Add("Tanya", TanyaQueue);
        PriorityQueue<GameEvent> KyleQueue = new PriorityQueue<GameEvent>();
        Queues.Add("Kyle", KyleQueue);
        PriorityQueue<GameEvent> MsMorganQueue = new PriorityQueue<GameEvent>();
        Queues.Add("Morgan", MsMorganQueue);
        PriorityQueue<GameEvent> JimmyQueue = new PriorityQueue<GameEvent>();
        Queues.Add("Jimmy", JimmyQueue);

        string SavePath = Path.Combine(Application.persistentDataPath, "TheChallengeSave");

        if (LoadSaves && File.Exists(SavePath))
        {
            Debug.Log("Saved game exists, loading it...");
            //Here we have a save already, so load that and continue from there
            DisplayManager.instance.CloseNameEntryPanel();
            DisplayManager.instance.CloseNarrativeIntroPanel();
            DisplayManager.instance.ShowMainMenu();
            LoadGame();
        }
        else
        {
            Debug.Log("No save game found, starting from scratch");
            //Otherwise, do our startup tasks
            CurrentGameRealTime = StartingGameEventTime;
        }
        Initialized = true;
    }

    public void RestartGame()
    {
        CurrentGameRealTime = StartingGameEventTime;
        PastEvents.Clear();
        DisplayManager.instance.ClearAllChannels();
        string SavePath = Path.Combine(Application.persistentDataPath, "TheChallengeSave");
        try
        {
            File.Delete(SavePath);
        }
        catch (Exception e)
        {
            Debug.LogException(e, this);
        }
        InkManager.instance.ReloadStories();
    }

    private void OnApplicationPause(bool pause)
    {
        Debug.Log("OnAppPause " + pause);
        if (pause)
        {
            //Here we are being paused by the phone OS, and need to save our state so that we can resume from where we left off
            SaveGame();
        }
        else if(LoadSaves && Initialized)
        {
            //Focus is back on us, we should restore our saved state
            LoadGame();
        }
    }

    private void OnApplicationQuit()
    {
        Debug.Log("OnAppQuit");
        SaveGame();
    }

    // Update is called once per frame
    void Update ()
    {
        if (!WaitingForNameInput)
        {
            ProcessQueues();
            if (Input.GetKeyUp("escape"))
            {
                //Handle Android back button functionality here
                DisplayManager.instance.ShowMainMenu();
            }
            string TimeString = ParseTimeToString(CurrentGameRealTime);
            DisplayManager.instance.SetDebugTimeText(TimeString);
        }
    }

    string ParseTimeToString(float time)
    {
        int days = (int)(time / 86400);
        days += 1;
        time %= 86400;
        int hours = (int)(time / 3600);
        time %= 3600;
        int minutes = (int)(time / 60);
        time %= 60;
        //int seconds = (int)time;
        string retString = /*days.ToString() + ":" +*/ hours.ToString() + ":" + minutes.ToString() /*+ ":" + seconds.ToString()*/;
        return retString;

    }

    //Called on Awake() after singleton setup
    void Initialize()
    {

    }

    public void AddEventToQueue(GameEvent ge)
    {
        if (Queues.ContainsKey(ge.Channel))
        {
            if (!Queues[ge.Channel].Contains(ge))
            {
                Queues[ge.Channel].Enqueue(ge);
            }
        }
    }

    public void DebugShowQueues()
    {
        foreach (KeyValuePair<string, PriorityQueue<GameEvent>> kvp in Queues)
        {
            Debug.Log(kvp.Value.Peek().GameTimeToBeActivated + ": " + kvp.Value.Peek().Content);
        }
    }

    void ProcessQueues()
    {
        if (WaitingOnChoiceCount <= 0 && TotalWaitCount <= 0 && !DisplayManager.instance.WaitingForPlayerInput)
        {
            CurrentGameRealTime += (Time.deltaTime * DebugTimeFactor);
            foreach (KeyValuePair<string, PriorityQueue<GameEvent>> kvp in Queues)
            {
                if (kvp.Value.Count() > 0 && kvp.Value.Peek().GameTimeToBeActivated <= CurrentGameRealTime)
                {
                    GameEvent currentEvent = kvp.Value.Dequeue();
                    ChoiceEvent choiceEvent = currentEvent as ChoiceEvent;
                    if (choiceEvent != null)
                    {
                        Debug.Log("Dequeuing choice event with " + choiceEvent.Choices.Count + " choices in channel "+choiceEvent.Channel+".");
                        DisplayManager.instance.DisplayChoiceEvent(choiceEvent);
                        WaitingOnChoiceCount++;
                    }
                    else
                    {

                        Debug.Log("Dequeueing event with content: " + currentEvent.Content + " DisplayTime: " + currentEvent.DisplayTime + " Character: " + currentEvent.CharacterName);
                        CurrentGameEventTime = (currentEvent.GameTimeToBeActivated == 0 ? CurrentGameEventTime : currentEvent.GameTimeToBeActivated);
                        DisplayManager.instance.DisplayEvent(currentEvent);
                        PastEvents.Add(currentEvent);
                        if (currentEvent.ShouldWaitAfter && DisplayManager.instance.GetCurrentlyActiveChannel() != currentEvent.Channel)
                        {
                            TotalWaitCount++;
                            if (ChannelWaitCounts.ContainsKey(currentEvent.Channel))
                            {
                                ChannelWaitCounts[currentEvent.Channel]++;
                            }
                            else
                            {
                                ChannelWaitCounts.Add(currentEvent.Channel, 1);
                            }
                        }

                    }
                }
                if (kvp.Value.Count() == 0 && WaitingOnChoiceCount <= 0)
                {
                    //Our queue is empty, let's see if the ink manager has more stuff for us
                    InkManager.instance.AdvanceStory(kvp.Key);
                }
            }
        }
        else
        {
            //Debug.Log("Stuck waiting! Waiting for choice: " + WaitingOnChoiceCount + " waiting for name: " + WaitingForNameInput);
        }
    }

    public float GetCurrentTime()
    {
        return CurrentGameEventTime;
    }

    public void ChoiceMade()
    {
        WaitingOnChoiceCount--;
        CurrentGameEventTime = CurrentGameRealTime;
    }

    public void ChannelViewed(string ChannelName)
    {
        if (ChannelWaitCounts.ContainsKey(ChannelName))
        {
            ChannelWaitCounts[ChannelName]--;
            TotalWaitCount--;
        }
    }

    public void DebugTimeFactorChanged(float newValue)
    {
        DebugTimeFactor = newValue;
    }

    public void SaveGame()
    {

        SaveData sd = new SaveData();
        sd.CurrentGameEventTime = CurrentGameEventTime;
        sd.CurrentGameRealTime = CurrentGameRealTime;
        sd.PlayerName = DisplayManager.instance.GetPlayerName();
        sd.PlayerPronoun = DisplayManager.instance.GetPlayerPronoun();
        sd.PastGameEvents = PastEvents;

        sd.GroupInkJSON = InkManager.instance.GetJSON("Group");
        sd.HemaInkJSON = InkManager.instance.GetJSON("Hema");
        sd.JessieInkJSON = InkManager.instance.GetJSON("Jessie");
        sd.AnettaInkJSON = InkManager.instance.GetJSON("Anetta");
        sd.TanyaInkJSON = InkManager.instance.GetJSON("Tanya");
        sd.KalilInkJSON = InkManager.instance.GetJSON("Kalil");
        sd.KyleInkJSON = InkManager.instance.GetJSON("Kyle");
        sd.MorganInkJSON = InkManager.instance.GetJSON("Morgan");
        sd.JimmyInkJSON = InkManager.instance.GetJSON("Jimmy");

        sd.PartyAnetta = DisplayManager.instance.GetPartyAnetta();

        string SavePath = Path.Combine(Application.persistentDataPath, "TheChallengeSave");

        using (Stream SaveWriteStream = new FileStream(SavePath, FileMode.Create, FileAccess.Write, FileShare.Write))
        {
            try
            {
                BinaryFormatter BF = new BinaryFormatter();
                BF.Serialize(SaveWriteStream, sd);


            }
            catch (Exception e)
            {
                Debug.LogException(e, this);
            }
            //Because the Serialize() call could fail with the stream open 
            finally
            {
                SaveWriteStream.Close();
            }
        }
    }

    public void LoadGame()
    {
        string SavePath = Path.Combine(Application.persistentDataPath, "TheChallengeSave");
        SaveData sd = new SaveData();
        
        if (File.Exists(SavePath))
        {
            using (Stream SaveReadStream = new FileStream(SavePath, FileMode.Open, FileAccess.Read, FileShare.Read))
            {
                try
                {
                    BinaryFormatter BF = new BinaryFormatter();
                    sd = BF.Deserialize(SaveReadStream) as SaveData;

                }
                catch (Exception e)
                {
                    Debug.LogException(e, this);
                }
                //Because the Deserialize() call could fail with the stream open 
                finally
                {
                    SaveReadStream.Close();
                }
            }
            RestoreData(sd);
        }
        else
        {
            Debug.LogWarning("No save file " + SavePath + " found!");
        }
    }

    void RestoreData(SaveData sd)
    {
        CurrentGameRealTime = sd.CurrentGameRealTime;
        CurrentGameEventTime = sd.CurrentGameEventTime;
        DisplayManager.instance.SetPlayerName(sd.PlayerName);
        DisplayManager.instance.SetPlayerPronoun(sd.PlayerPronoun);
        PastEvents = sd.PastGameEvents;
        PopulateLoadedEvents();

        InkManager.instance.RestoreJSON("Group", sd.GroupInkJSON);
        InkManager.instance.RestoreJSON("Hema", sd.HemaInkJSON);
        InkManager.instance.RestoreJSON("Jessie", sd.JessieInkJSON);
        InkManager.instance.RestoreJSON("Anetta", sd.AnettaInkJSON);
        InkManager.instance.RestoreJSON("Tanya", sd.TanyaInkJSON);
        InkManager.instance.RestoreJSON("Kalil", sd.KalilInkJSON);
        InkManager.instance.RestoreJSON("Jimmy", sd.JimmyInkJSON);
        InkManager.instance.RestoreJSON("Kyle", sd.KyleInkJSON);
        InkManager.instance.RestoreJSON("Morgan", sd.MorganInkJSON);

        DisplayManager.instance.SetPartyAnetta(sd.PartyAnetta);
    }

    void PopulateLoadedEvents()
    {
        Debug.Log("PopulateLoadedEvents");
        foreach (GameEvent ge in PastEvents)
        {
            DisplayManager.instance.DisplayEvent(ge, true);
        }
        //TODO: Instead of this, we should save the notification information for each channel and restore that
        DisplayManager.instance.SetAllNotificationsRead();
    }


    /**
* This is boilerplate Singleton code for ensuring one and only one instance is active,
* and that the instance is created on first access if it does not exist.
**/

    static TimelineManager mInstance;

    static public bool isActive
    {
        get
        {
            return mInstance != null;
        }
    }

    static public TimelineManager instance
    {
        get
        {
            if (mInstance == null)
            {
                mInstance = UnityEngine.Object.FindObjectOfType(typeof(TimelineManager)) as TimelineManager;

                if (mInstance == null)
                {
                    Debug.LogWarning("Not able to find an instance of the Timeline Manager in the scene!");
                }
            }
            return mInstance;
        }
    }

    void OnDestroy()
    {
        if (mInstance == this)
        {
            mInstance = null;
        }
    }



    void Awake()
    {
        if (enabled)
        {
            if (mInstance == null || mInstance == this)
            {
                mInstance = this;
            }
            else
            {
                Debug.LogWarning("Another Timeline Manager already exists (" + mInstance.gameObject + "), destroying " + gameObject, mInstance);
                DestroyImmediate(gameObject);
                return;
            }

            //Ensure that this object persists across scene loads
            DontDestroyOnLoad(this.gameObject);
        }
        else
        {
            Debug.LogWarning("This Timeline Manager is disabled (" + gameObject + "), destroying.");
            DestroyImmediate(gameObject);
        }
        Initialize();
    }
}
