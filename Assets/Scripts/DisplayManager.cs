using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

[System.Serializable]
public class Channel
{
    public string ChannelName;
    public GameObject MessagePanel;
    public Sprite Portrait;
    public GameObject IncomingMessagePrefab;
    public GameObject OutgoingMessagePrefab;
    public GameObject ContentPanel;
    public ChatMenuButton chatMenuButton;
}

public class DisplayManager : MonoBehaviour
{
    public List<Channel> Channels;

    [Header("UI")]
    public GameObject ChatPanel;
    public GameObject MenuPanel;
    public GameObject CreditsPanel;

    public GameObject ChoicePrefab;
    public GameObject ChoiceButtonPrefab;

    
	void Start ()
    {
        //TODO: Go through all channels and set them up with the correct character portrait and name
        //Actually why, since we have separate panels we don't need to do this dynamically
        
        foreach (Channel c in Channels)
        {
            //MessagePanel panel = c.MessagePanel.GetComponent<MessagePanel>();
            //panel.CharacterNameText.text = c.ChannelName;
            //panel.PortraitImage.sprite = c.Portrait;
            //TODO: Restore this info from saved state of some kind
            c.chatMenuButton.SetNotificationsRead();
            c.chatMenuButton.SetPreviewText("");
        }
        
    }
	
	// Update is called once per frame
	void Update ()
    {
		
	}

    void Initialize()
    {

    }

    public void ShowCredits()
    {
        CreditsPanel.SetActive(true);
    }

    public void ShowMainMenu()
    {
        CreditsPanel.SetActive(false);
        HideAllMessagePanels();
        MenuPanel.SetActive(true);
    }

    public void ShowMessagePanel(string channelName)
    {
        Channel MessageChannel = Channels.Find(x => x.ChannelName == channelName);
        if (MessageChannel != null)
        {
            MenuPanel.SetActive(false);
            HideAllMessagePanels();
            MessageChannel.MessagePanel.SetActive(true);
            MessageChannel.chatMenuButton.SetNotificationsRead();
            Canvas.ForceUpdateCanvases();

            MessageChannel.ContentPanel.GetComponentInParent<ScrollRect>().verticalNormalizedPosition = 0f;

            Canvas.ForceUpdateCanvases();
        }
    }

    void HideAllMessagePanels()
    {
        foreach (Channel c in Channels)
        {
            c.MessagePanel.SetActive(false);
        }
    }

    public void DisplayEvent(GameEvent e)
    {
        //TODO: Set message preview text
        //TODO: Set unread message indicator
        Channel MessageChannel = Channels.Find(x => x.ChannelName == e.Channel);
        if (MessageChannel != null)
        {

            //TODO: Figure out the length of the message and change the prefab based on that
            //TODO: Look up the character involved and attach their portrait

            GameObject message;
            if (e.CharacterName.ToLower() == "player")
            {
                //TODO: Eventually this should wait to display the player message until the player has initiated action or something similar
                message = GameObject.Instantiate(MessageChannel.OutgoingMessagePrefab, MessageChannel.ContentPanel.transform);
                MessageUI M = message.GetComponent<MessageUI>();
                //Player messages don't have a name or portrait to worry about
                M.MessageText.text =  e.Content;
            }
            else
            {
                MessageChannel.chatMenuButton.AddUnreadNotification();
                string PreviewText = "";
                if (e.Content.Length > 20)
                {
                    PreviewText = e.Content.Substring(0, 17);
                    PreviewText += "...";
                }
                else
                {
                    PreviewText = e.Content;
                }
                MessageChannel.chatMenuButton.SetPreviewText(PreviewText);


                if (e.Channel == "Group")
                {
                    message = GameObject.Instantiate(MessageChannel.IncomingMessagePrefab, MessageChannel.ContentPanel.transform);
                    //If we're in a group chat, the message has a portrait and a name that needs to be set up.
                    //TODO: pull character portrait from channel data??

                    MessageUI M = message.GetComponent<MessageUI>();
                    Channel CharChannel = Channels.Find(x => x.ChannelName == e.CharacterName);
                    if (CharChannel != null)
                    {
                        M.CharacterImage.sprite = CharChannel.Portrait;
                    }
                    M.MessageText.text = e.Content;
                    M.CharacterNameText.text = e.CharacterName;
                }
                else
                {
                    message = GameObject.Instantiate(MessageChannel.IncomingMessagePrefab, MessageChannel.ContentPanel.transform);
                    MessageUI M = message.GetComponent<MessageUI>();
                    //Single messages don't have to worry about the name or portrait either, just the text content
                    M.MessageText.text = e.Content;
                }
                    
            }
            Canvas.ForceUpdateCanvases();
            if (MessageChannel.ContentPanel.activeInHierarchy)
            {
                MessageChannel.ContentPanel.GetComponentInParent<ScrollRect>().verticalNormalizedPosition = 0f;
            }

            Canvas.ForceUpdateCanvases();
        }


    }

    public void DisplayChoiceEvent(ChoiceEvent e)
    {
        Channel MessageChannel = Channels.Find(x => x.ChannelName == e.Channel);
        if (MessageChannel != null)
        {
            //TODO: Instead of instantly displaying the panel, think about the actual flow we want here - some sort of notification system?
            HideAllMessagePanels();
            MessageChannel.MessagePanel.SetActive(true);
            //TODO: Figure out the length of the message and change the prefab based on that

            GameObject message;
            
            message = GameObject.Instantiate(ChoicePrefab, MessageChannel.ContentPanel.transform);
            for(int i=0;i<e.Choices.Count;i++)
            {
                GameObject ChoiceButton = GameObject.Instantiate(ChoiceButtonPrefab, message.transform);
                ChoiceButton.GetComponentInChildren<TMPro.TextMeshProUGUI>().text = e.Choices[i];
                int choiceIndex = i;
                ChoiceButton.GetComponentInChildren<Button>().onClick.AddListener(delegate { HandleChoice(e.Channel, choiceIndex, message); });
            }

        }
    }

    public void HandleChoice(string Channel, int ChoiceIndex, GameObject ChoiceUI)
    {
        Debug.Log("Handle choice called with channel " + Channel + " and index " + ChoiceIndex);
        InkManager.instance.HandleChoice(Channel, ChoiceIndex);
        //TODO: Replace ChoiceUI with text display showing choice made (or alternate choice text...?)
        GameObject.Destroy(ChoiceUI);
        TimelineManager.instance.ChoiceMade();
    }

    /**
* This is boilerplate Singleton code for ensuring one and only one instance is active,
* and that the instance is created on first access if it does not exist.
**/

    static DisplayManager mInstance;

    static public bool isActive
    {
        get
        {
            return mInstance != null;
        }
    }

    static public DisplayManager instance
    {
        get
        {
            if (mInstance == null)
            {
                mInstance = UnityEngine.Object.FindObjectOfType(typeof(DisplayManager)) as DisplayManager;

                if (mInstance == null)
                {
                    Debug.LogWarning("Not able to find an instance of the Display Manager in the scene!");
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
                Debug.LogWarning("Another Display Manager already exists (" + mInstance.gameObject + "), destroying " + gameObject, mInstance);
                DestroyImmediate(gameObject);
                return;
            }

            //Ensure that this object persists across scene loads
            DontDestroyOnLoad(this.gameObject);
        }
        else
        {
            Debug.LogWarning("This Display Manager is disabled (" + gameObject + "), destroying.");
            DestroyImmediate(gameObject);
        }
        Initialize();
    }
}
