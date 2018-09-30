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

    Dictionary<string, float> CurrentTimeClocks;

    public List<Chat> AllChats;

    public float ChoiceDelaySeconds = 3.0f;


	void Start ()
    {
        
	}

    public void ReloadStories()
    {
        CurrentStories.Clear();
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

            s.BindExternalFunction("PlayerName", () =>
            {
                return DisplayManager.instance.GetPlayerName();

            });

            s.BindExternalFunction("PlayerPersonalPronoun", () =>
            {
                return DisplayManager.instance.GetPersonalPronoun();

            });

            s.BindExternalFunction("PlayerPossessivePronoun", () =>
            {
                return DisplayManager.instance.GetPossessivePronoun();

            });

            s.BindExternalFunction("PlayerObjectivePronoun", () =>
            {
                return DisplayManager.instance.GetObjectivePronoun();

            });

        }
    }

    private void Initialize()
    {
        CurrentStories = new Dictionary<string, Story>();
        CurrentTimeClocks = new Dictionary<string, float>();
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

            s.BindExternalFunction("PlayerName", () =>
            {
                return DisplayManager.instance.GetPlayerName();

            });

            s.BindExternalFunction("PlayerPersonalPronoun", () =>
            {
                return DisplayManager.instance.GetPersonalPronoun();

            });

            s.BindExternalFunction("PlayerPossessivePronoun", () =>
            {
                return DisplayManager.instance.GetPossessivePronoun();

            });

            s.BindExternalFunction("PlayerObjectivePronoun", () =>
            {
                return DisplayManager.instance.GetObjectivePronoun();

            });

            s.BindExternalFunction("PartyAnetta", () =>
            {
                return DisplayManager.instance.GetPartyAnetta();

            });

            s.BindExternalFunction("SetPartyAnetta", (bool party) =>
            {
                DisplayManager.instance.SetPartyAnetta(party);

            });

            s.BindExternalFunction("CheckHemaDrunk", () =>
            {
                return DisplayManager.instance.GetHemaDrunk();

            });

            s.BindExternalFunction("SetHemaDrunk", (bool drunk) =>
            {
                DisplayManager.instance.SetHemaDrunk(drunk);

            });

        }
    }
    
    public void AdvanceStories()
    {
        foreach (KeyValuePair<string, Story> s in CurrentStories)
        {
            AdvanceStory(s.Key);
        }
    }
    



    public void AdvanceStory(string Channel)
    {
        if (!CurrentStories.ContainsKey(Channel))
        {
            //No channel of that name - for now during early dev, that's fine, but we should put in an error eventually to catch this case
            Debug.LogError("Tried to advancestory on channel "+Channel+" which was not found!");
            return;
        }
        Debug.Log("AdvanceStory "+Channel);
        //If we can continue, that means that we have no choices to worry about and there's still content to go
        //if (CurrentStories[Channel].canContinue)
        {
            while (CurrentStories[Channel].canContinue)
            {
                string newText = CurrentStories[Channel].Continue().Trim();
                ParseLine(newText, CurrentStories[Channel].currentTags, CurrentStories[Channel].globalTags);
            }
        }
        if (CurrentStories[Channel].currentChoices.Count > 0)
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
            //Put in a delay before displaying choices, so that they aren't instantaneous. This gives the player time to read the last message,
            //plus for us to play the correct animations.
            if (CurrentTimeClocks.ContainsKey(Channel))
            {
                choiceEvent.GameTimeToBeActivated = CurrentTimeClocks[Channel] + ChoiceDelaySeconds;
            }
            else
            {
                Debug.LogError("Channel '" + Channel + "' has no associated key in the time clocks dictionary; skipping the choice "+choiceEvent.Choices[0]+"/"+choiceEvent.Choices[1]);
                return;
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
        string absoluteTimeStamp= "";
        bool shouldWait = false;

        //The global tags determine the channel we're part of
        if (globalTags != null && globalTags.Count > 0)
        {
            channel = globalTags[0];
        }
        else
        {
            Debug.LogError("This ink file isn't tagged with a global channel identifier!");
        }
        //Separate out the character/time info from the text content
        //TODO: pick another character for this, or parse correctly to avoid the : in time strings
        string[] subStrings = line.Split(';');
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
                characterName = subStrings[0];
            }
            contentString = subStrings[1];


            //Debug.Log("ParseString found - Name: " + characterName + " Time: " + timeString + " Content: " + contentString+" Channel: "+channel);

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
                        case "time":

                            absoluteTimeStamp = tagpieces[1];
                            break;

                    }
                }
                else if (tagpieces.Length == 1)
                {
                    switch (tagpieces[0])
                    {
                        case "wait":
                            shouldWait = true;
                            break;
                    }
                }
            }

            if (contentString.StartsWith("<") && !contentString.Contains("sprite"))
            {
                //This is an image message, not a normal message


                ImageEvent imageEvent = new ImageEvent();
                imageEvent.Content = contentString;
                imageEvent.DisplayTime = timeString;
                imageEvent.CharacterName = characterName;


                imageEvent.Channel = channel;
                imageEvent.ShouldWaitAfter = shouldWait;
                imageEvent.AbsoluteTimeString = absoluteTimeStamp;
                imageEvent.GameTimeToBeActivated = ParseAbsoluteTimestamp(absoluteTimeStamp);

                int StartIndex = 0;
                StartIndex = contentString.IndexOf("<", StartIndex);
                string ImageName = contentString.Substring(StartIndex +1, contentString.Length - 2);

                imageEvent.ImageName = ImageName;

                //Debug.Log("Calculated game time active to be " + imageEvent.GameTimeToBeActivated);
                TimelineManager.instance.AddEventToQueue(imageEvent);
                CurrentTimeClocks[channel] = imageEvent.GameTimeToBeActivated;
            }
            else
            {

                GameEvent gameEvent = new GameEvent();
                gameEvent.Content = contentString;
                gameEvent.DisplayTime = timeString;
                gameEvent.CharacterName = characterName;


                gameEvent.Channel = channel;
                gameEvent.ShouldWaitAfter = shouldWait;
                gameEvent.AbsoluteTimeString = absoluteTimeStamp;
                gameEvent.GameTimeToBeActivated = ParseAbsoluteTimestamp(absoluteTimeStamp);

                Debug.Log("Calculated game time active to be " + gameEvent.GameTimeToBeActivated+" Current time: "+TimelineManager.instance.GetCurrentTime());
                TimelineManager.instance.AddEventToQueue(gameEvent);
                CurrentTimeClocks[channel] = gameEvent.GameTimeToBeActivated;
            }


        }
        else
        {
            //This line wasn't constructed appropriately, let's log an error
            Debug.LogError("String " + line + " in channel "+channel+" has no meta information (character name and in-game timestamp).");
        }
    }

    public float ParseAbsoluteTimestamp(string timestamp)
    {
        //Here we take a human-readable timestamp string in the format d:hh:mm:ss and convert it to a float value from game time zero (1:00:00:00)
        string[] values = timestamp.Split(':');
        int days, hours, minutes, seconds;
        float final = 0.0f;
        if (values.Length == 4)
        {
            //TODO: add some error catching here
            if (int.TryParse(values[0], out days))
            {
                //Got our days value!
                final += ((days -1) * 86400.0f);
            }
            if (int.TryParse(values[1], out hours))
            {
                final += (hours * 3600.0f);
            }
            if (int.TryParse(values[2], out minutes))
            {
                final += (minutes * 60.0f);
            }
            if (int.TryParse(values[3], out seconds))
            {
                final += seconds;
            }
        }
        else
        {
            //Something was't right with the string's format, yell about it and move on
        }
        return final;
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

    public string GetJSON(string ChannelName)
    {
        if ( CurrentStories != null && CurrentStories.ContainsKey(ChannelName))
        {
            return CurrentStories[ChannelName].state.ToJson();
        }
        else
        {
            Debug.LogError("Error saving Ink state: no channel found named " + ChannelName);
            return "";
        }
    }

    public void RestoreJSON(string ChannelName, string JSON)
    {
        if (CurrentStories != null && CurrentStories.ContainsKey(ChannelName))
        {
            CurrentStories[ChannelName].state.LoadJson(JSON);
        }
        else
        {
            Debug.LogError("Error restoring Ink state: no channel found named " + ChannelName);
        }
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
