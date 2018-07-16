using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

[System.Serializable]
public class Chat
{
    public string ChatChannelName;
    public TextAsset ChatText;
}

public class InkManager : MonoBehaviour
{
    //We should load all the stories in at once, and deal with them concurrently so we can correctly queue up events.
    //This allows us to still separate out the chats into different files, for the ease of the writer
    Dictionary<string, Story> CurrentStories;

    public List<Chat> AllChats;


	void Start ()
    {
        CurrentStories = new Dictionary<string, Story>();
        foreach (Chat C in AllChats)
        {
            Story s = new Story(C.ChatText.text);
            CurrentStories.Add(C.ChatChannelName, s);
            s.BindExternalFunction("RelationshipChange", (string character, int change) =>
            {
                DisplayManager.instance.AddRelationshipValue(character, change);
                Debug.Log("RelationshipChange called with channel " + character + " and value " + change);
            });

            s.BindExternalFunction("GetRelationshipValue", (string character) =>
            {
                return DisplayManager.instance.GetRelationshipValue(character);
               
            });
        }
	}

    private void Initialize()
    {

    }
    /*
    public void AdvanceStories()
    {
        foreach (KeyValuePair<string, Story> s in CurrentStories)
        {
            //If we can continue, that means that we have no choices to worry about and there's still content to go
            if (s.Value.canContinue)
            {
                string newText = s.Continue().Trim();
                ParseLine(newText, s.currentTags, s.globalTags);
            }
            else if (s.currentChoices.Count > 0)
            {
                //We have a choice for the player to make - we need to deal with that separately
                //TODO: Create a new event that is a choice and pass that on to the event manager
            }
            //Otherwise we need to figure something else out
            else
            {

            }
        }
    }
    */



    public void AdvanceStory(string Channel)
    {
        if (!CurrentStories.ContainsKey(Channel))
        {
            //No channel of that name - for now during early dev, that's fine, but we should put in an error eventually to catch this case
            return;
        }
        //If we can continue, that means that we have no choices to worry about and there's still content to go
        if (CurrentStories[Channel].canContinue)
        {
            string newText = CurrentStories[Channel].Continue().Trim();
            ParseLine(newText, CurrentStories[Channel].currentTags, CurrentStories[Channel].globalTags);
        }
        else if (CurrentStories[Channel].currentChoices.Count > 0)
        {
            //We have a choice for the player to make - we need to deal with that separately
            //TODO: Create a new event that is a choice and pass that on to the event manager
            ChoiceEvent choiceEvent = new ChoiceEvent();
            choiceEvent.Channel = Channel;
            //No data besides the channel applies to choices
            choiceEvent.Choices = new List<string>();
            for (int i = 0; i < CurrentStories[Channel].currentChoices.Count; i++)
            {
                choiceEvent.Choices.Add(CurrentStories[Channel].currentChoices[i].text);

            }
            TimelineManager.instance.AddEventToQueue(choiceEvent);
        }
        //Otherwise we need to figure something else out
        else
        {

        }
    }

    //Here we figure out who is saying this line, when, and how long we should wait before the next one
    void ParseLine(string line, List<string> tags, List<string> globalTags)
    {
        string characterName = "";
        string timeString = "";
        string contentString = "";
        string channel = "";
        float delayTimeInSeconds = 0.0f;

        //The global tags determine the channel we're part of
        if (globalTags.Count > 0)
        {
            channel = globalTags[0];
        }
        else
        {
            Debug.LogError("This ink file isn't tagged with a global channel identifier!");
        }
        //Separate out the character/time info from the text content
        //TODO: pick another character for this, or parse correctly to avoid the : in time strings
        string[] subStrings = line.Split(':');
        //If there was a section at the beginning that means we have meta display info (this might not exist for character chats, we'll see)
        if (subStrings.Length > 1)
        {
            string metaInfo = subStrings[0];
            //Now we separate out the meta info into character name and display time
            string[] metaArray = metaInfo.Split('@');
            if (metaArray.Length > 1)
            {
                characterName = metaArray[0];
                timeString = metaArray[1];
            }
            else
            {
                //Maybe here we have the ability to only include a timestamp, for character-specific chats?
            }
            contentString = subStrings[1];

            Debug.Log("ParseString found - Name: " + characterName + " Time: " + timeString + " Content: " + contentString+" Channel: "+channel);

            foreach (string Tag in tags)
            {
                string[] tagpieces = Tag.Split('=');
                if (tagpieces.Length == 2)
                {
                    switch (tagpieces[0])
                    {
                        case "delay":
                            if (float.TryParse(tagpieces[1], out delayTimeInSeconds))
                            {
                                //Yay everything worked OK
                                Debug.Log("Got a delay value of " + delayTimeInSeconds + " from a tag.");
                            }
                            else
                            {
                                Debug.LogError("Found a 'delay' value in the tag " + Tag + " but it had an invalid timing value "+tagpieces[1]+"!");
                            }
                            break;

                    }
                }
            }
            
            GameEvent gameEvent = new GameEvent();
            gameEvent.Content = contentString;
            gameEvent.DisplayTime = timeString;
            gameEvent.CharacterName = characterName;
            //TODO: parse this from the tags
            gameEvent.GameTimeToBeActivated = TimelineManager.instance.GetCurrentTime() + delayTimeInSeconds;
            Debug.Log("Calculated game time active to be " + gameEvent.GameTimeToBeActivated);
            gameEvent.Channel = channel;
            TimelineManager.instance.AddEventToQueue(gameEvent);


        }
        else
        {
            //This line wasn't constructed appropriately, let's log an error
            Debug.LogError("String " + line + " has no meta information (character name and in-game timestamp).");
        }
    }

    public void HandleChoice(string channel, int choiceIndex)
    {
        if (!CurrentStories.ContainsKey(channel))
        {
            //No channel of that name - for now during early dev, that's fine, but we should put in an error eventually to catch this case
            return;
        }

        CurrentStories[channel].ChooseChoiceIndex(choiceIndex);
        AdvanceStory(channel);
    }



    /**
* This is boilerplate Singleton code for ensuring one and only one instance is active,
* and that the instance is created on first access if it does not exist.
**/

    static InkManager mInstance;

    static public bool isActive
    {
        get
        {
            return mInstance != null;
        }
    }

    static public InkManager instance
    {
        get
        {
            if (mInstance == null)
            {
                mInstance = UnityEngine.Object.FindObjectOfType(typeof(InkManager)) as InkManager;

                if (mInstance == null)
                {
                    Debug.LogWarning("Not able to find an instance of the Ink Manager in the scene!");
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
                Debug.LogWarning("Another Ink Manager already exists (" + mInstance.gameObject + "), destroying " + gameObject, mInstance);
                DestroyImmediate(gameObject);
                return;
            }

            //Ensure that this object persists across scene loads
            DontDestroyOnLoad(this.gameObject);
        }
        else
        {
            Debug.LogWarning("This Ink Manager is disabled (" + gameObject + "), destroying.");
            DestroyImmediate(gameObject);
        }
        Initialize();
    }
}
