﻿using System;
using System.Collections;
using System.Collections.Generic;
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

public class ChoiceEvent : GameEvent
{
    public List<string> Choices;
}


//This class handles timing for the game. 
//It handles displaying the next message or event that comes in, and keeps track of where we are in the game currently
//It keeps a queue of messages to display, fed by the InkManager, and when it is time to display them it sends them to the DisplayManager
public class TimelineManager : MonoBehaviour
{
    //TODO: I think this will need to look at system time, because this will not increment when we're in pause mode
    float CurrentGameRealTime = 0.0f;

    float CurrentGameEventTime = 0.0f;

    GameEvent CurrentGameEvent;

    Dictionary<string, PriorityQueue<GameEvent>> Queues;

    bool WaitingOnChoice = false;

    // Use this for initialization
    void Start ()
    {
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
    }
	
	// Update is called once per frame
	void Update ()
    {
        CurrentGameRealTime += Time.deltaTime;
        ProcessQueues();
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

    void ProcessQueues()
    {
        if(!WaitingOnChoice)
        {
            foreach (KeyValuePair<string, PriorityQueue<GameEvent>> kvp in Queues)
            {
                if (kvp.Value.Count() > 0 && kvp.Value.Peek().GameTimeToBeActivated <= CurrentGameRealTime)
                {
                    GameEvent currentEvent = kvp.Value.Dequeue();
                    ChoiceEvent choiceEvent = currentEvent as ChoiceEvent;
                    if (choiceEvent != null)
                    {
                        Debug.Log("Dequeuing choice event with " + choiceEvent.Choices.Count + " choices.");
                        DisplayManager.instance.DisplayChoiceEvent(choiceEvent);
                        WaitingOnChoice = true;
                    }
                    else
                    {
                        Debug.Log("Dequeueing event with content: " + currentEvent.Content + " DisplayTime: " + currentEvent.DisplayTime + " Character: " + currentEvent.CharacterName);
                        CurrentGameEventTime = currentEvent.GameTimeToBeActivated;
                        DisplayManager.instance.DisplayEvent(currentEvent);
                    }
                }
                if (kvp.Value.Count() == 0 && !WaitingOnChoice)
                {
                    //Our queue is empty, let's see if the ink manager has more stuff for us
                    InkManager.instance.AdvanceStory(kvp.Key);
                    //TODO: Set up a push notification for the next event scheduled to occur
                    //TODO: Handle the case of waiting for player input
                }
            }
        }
    }

    public float GetCurrentTime()
    {
        return CurrentGameEventTime;
    }

    public void ChoiceMade()
    {
        WaitingOnChoice = false;
        CurrentGameEventTime = CurrentGameRealTime;
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
