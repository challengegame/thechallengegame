using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
#if UNITY_IOS
using UnityEngine.iOS;
#endif
using UnityEngine.Analytics;
using System;
using DG.Tweening;

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
    public int RelationshipValue;
}

public enum Pronoun
{
    THEY,
    SHE,
    HE
};

public class DisplayManager : MonoBehaviour
{
    public List<Channel> Channels;

    [Header("UI")]
    public GameObject ChatPanel;
    public GameObject MenuPanel;
    public GameObject CreditsPanel;
    public GameObject NameEntryPanel;
    public GameObject NarrativeIntroPanel;

    public GameObject PortraitImagePanel;
    public Image PortraitImage;
    public GameObject LandscapeImagePanel;
    public Image LandscapeImage;

    public GameObject ChoicePrefab;
    public GameObject ChoiceButtonPrefab;
    public GameObject TypingPrefab;
    public GameObject LandscapeImagePrefab;
    public GameObject PortraitImagePrefab;

    public TMPro.TextMeshProUGUI debugTimeText;

    string CurrentlyActiveChannel = "";

    string PlayerName = "Quinn";
    Pronoun PlayerPronoun = Pronoun.THEY;

    Queue<GameEvent> DisplayQueue;

    bool Waiting = false;
    
	void Start ()
    {
#if UNITY_IOS
        UnityEngine.iOS.NotificationServices.RegisterForNotifications(NotificationType.Alert | NotificationType.Badge | NotificationType.Sound);
#endif
        //TODO: Go through all channels and set them up with the correct character portrait and name
        //Actually why, since we have separate panels we don't need to do this dynamically

        foreach (Channel c in Channels)
        {
            //MessagePanel panel = c.MessagePanel.GetComponent<MessagePanel>();
            //panel.CharacterNameText.text = c.ChannelName;
            //panel.PortraitImage.sprite = c.Portrait;
            c.chatMenuButton.SetNotificationsRead();
            c.chatMenuButton.SetPreviewText("");
        }
        
    }

    void Initialize()
    {
        DisplayQueue = new Queue<GameEvent>();
    }

    public void ClearAllChannels()
    {
        foreach (Channel c in Channels)
        {
            for (int i = c.ContentPanel.transform.childCount; i >= 0 ; i--)
            {
                Destroy(c.ContentPanel.transform.GetChild(i).gameObject);
            }
        }
    }

    public void SetAllNotificationsRead()
    {
        foreach (Channel c in Channels)
        {
            c.chatMenuButton.SetNotificationsRead();
        }
    }

    public void ShowCredits()
    {
        CreditsPanel.SetActive(true);
        //Temp for testing
        TimelineManager.instance.SaveGame();
    }

    public void ShowMainMenu()
    {
        CreditsPanel.SetActive(false);
        HideAllMessagePanels();
        MenuPanel.SetActive(true);
        CurrentlyActiveChannel = "";
    }

    public void ShowLandscapeImage(Sprite image)
    {
        LandscapeImagePanel.SetActive(true);
        LandscapeImage.sprite = image;
    }

    public void ShowPortraitImage(Sprite image)
    {
        PortraitImagePanel.SetActive(true);
        PortraitImage.sprite = image;
    }

    public void CloseImagePanel()
    {
        PortraitImagePanel.SetActive(false);
        LandscapeImagePanel.SetActive(false);
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
            TimelineManager.instance.ChannelViewed(channelName);
            Canvas.ForceUpdateCanvases();

            MessageChannel.ContentPanel.GetComponentInParent<ScrollRect>().verticalNormalizedPosition = 0f;

            Canvas.ForceUpdateCanvases();
            CurrentlyActiveChannel = channelName;
        }
    }

    void HideAllMessagePanels()
    {
        foreach (Channel c in Channels)
        {
            c.MessagePanel.SetActive(false);
        }
    }


    public void DisplayEvent(GameEvent e, bool immediate=true)
    {
        Debug.Log("DisplayEvent");
        Channel MessageChannel = Channels.Find(x => x.ChannelName == e.Channel);
        if (MessageChannel != null)
        {
            if (immediate)
            {
                //TODO: Figure out the length of the message and change the prefab based on that
                GameObject message;
                if (e.CharacterName.ToLower() == "player")
                {
                    //TODO: Eventually this should wait to display the player message until the player has initiated action or something similar
                    message = GameObject.Instantiate(MessageChannel.OutgoingMessagePrefab, MessageChannel.ContentPanel.transform);
                    MessageUI M = message.GetComponent<MessageUI>();
                    //Player messages don't have a name or portrait to worry about
                    M.MessageText.text = e.Content;
                    M.MessageText.ForceMeshUpdate();
                    float TextHeight = M.MessageText.preferredHeight;
                    int linecount = M.MessageText.textInfo.lineCount;
                    Debug.Log("Message height: " + TextHeight + " line count: " + linecount);
                    RectTransform rt = M.MessagePrefabRect;
                    rt.sizeDelta = new Vector2(rt.rect.width, TextHeight + 10);
                    Canvas.ForceUpdateCanvases();
                    if (MessageChannel.ContentPanel.activeInHierarchy)
                    {
                        MessageChannel.ContentPanel.GetComponentInParent<ScrollRect>().verticalNormalizedPosition = 0f;
                    }

                    Canvas.ForceUpdateCanvases();
                }
                else
                {

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

                    if (CurrentlyActiveChannel != e.Channel)
                    {
                        MessageChannel.chatMenuButton.AddUnreadNotification();
                        //TODO: Only launch these if the app is not "in focus" or whatever
                        //TODO: Move this to the point where the message is queued and schedule based on the delay value
                        //TODO: Combine all received messages into one notification
#if UNITY_IOS
                    UnityEngine.iOS.LocalNotification localNotification = new UnityEngine.iOS.LocalNotification();

                    localNotification.fireDate = System.DateTime.Now;
                    localNotification.alertBody = e.Channel + ": "+PreviewText;
#endif
                        ShowMessage(e, MessageChannel);
                    }
                    else
                    {
                        ShowMessage(e, MessageChannel);
                    }

                }
            }
            else
            {
                //Add message to display queue
                DisplayQueue.Enqueue(e);
                
            }

        }


    }
    /*
    public void DisplayEventFromQueue(GameEvent e)
    {
        Debug.Log("DisplayEventFromQueue "+e.Content);
        Channel MessageChannel = Channels.Find(x => x.ChannelName == e.Channel);
        if (MessageChannel != null)
        {
            //TODO: Figure out the length of the message and change the prefab based on that
            GameObject message;
            if (e.CharacterName.ToLower() == "player")
            {
                //TODO: Eventually this should wait to display the player message until the player has initiated action or something similar
                message = GameObject.Instantiate(MessageChannel.OutgoingMessagePrefab, MessageChannel.ContentPanel.transform);
                MessageUI M = message.GetComponent<MessageUI>();
                //Player messages don't have a name or portrait to worry about
                M.MessageText.text = e.Content;
                M.MessageText.ForceMeshUpdate();
                float TextHeight = M.MessageText.preferredHeight;
                int linecount = M.MessageText.textInfo.lineCount;
                Debug.Log("Message height: " + TextHeight + " line count: " + linecount);
                RectTransform rt = M.MessagePrefabRect;
                rt.sizeDelta = new Vector2(0, TextHeight);
                Canvas.ForceUpdateCanvases();
                if (MessageChannel.ContentPanel.activeInHierarchy)
                {
                    MessageChannel.ContentPanel.GetComponentInParent<ScrollRect>().verticalNormalizedPosition = 0f;
                }

                Canvas.ForceUpdateCanvases();
            }
            else
            {

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

                if (CurrentlyActiveChannel != e.Channel)
                {
                    MessageChannel.chatMenuButton.AddUnreadNotification();
                    //TODO: Only launch these if the app is not "in focus" or whatever
                    //TODO: Move this to the point where the message is queued and schedule based on the delay value
                    //TODO: Combine all received messages into one notification
#if UNITY_IOS
                UnityEngine.iOS.LocalNotification localNotification = new UnityEngine.iOS.LocalNotification();

                localNotification.fireDate = System.DateTime.Now;
                localNotification.alertBody = e.Channel + ": "+PreviewText;
#endif
                    ShowMessage(e, MessageChannel);
                }
                else
                {
                    StartCoroutine(ShowMessageDelayed(e, MessageChannel));
                }

            }
        }

    }
    */

    private void Update()
    {
        //Process display queue
        if (DisplayQueue.Count > 0 && !Waiting)
        {
            //GameEvent ge = DisplayQueue.Dequeue();
            //DisplayEventFromQueue(ge);
        }
    }

    IEnumerator ShowMessageDelayed(GameEvent e, Channel MessageChannel)
    {
        Waiting = true;
        float seconds = 0;
        seconds = e.Content.Length * 0.1f;
        Debug.Log("Show Message Delayed, seconds: "+seconds);
        GameObject TypingObject = GameObject.Instantiate(TypingPrefab, MessageChannel.ContentPanel.transform);
        TypingObject.GetComponent<Talking>().NameText.text = (e.CharacterName + " is typing...");
        Canvas.ForceUpdateCanvases();
        if (MessageChannel.ContentPanel.activeInHierarchy)
        {
            MessageChannel.ContentPanel.GetComponentInParent<ScrollRect>().verticalNormalizedPosition = 0f;
        }

        Canvas.ForceUpdateCanvases();
        yield return new WaitForSeconds(0.1f/*seconds*/);
        Destroy(TypingObject);
        ShowMessage(e, MessageChannel);
        Waiting = false;
    }

    void ShowMessage(GameEvent e, Channel MessageChannel)
    {
        GameObject message;
        ImageEvent imageEvent = e as ImageEvent;
        if (imageEvent != null)
        {
            //Handle image messages
            //Get the image from the image manager, and figure out whether it's landscape or portrait
            ImageMapping im = ImageManager.instance.GetImage(imageEvent.ImageName);
            if (im == null)
            {
                Debug.LogError("Image " + imageEvent.ImageName + " not found in the ImageManager");
                return;
            }
            if (im.orientation == ImageOrientation.LANDSCAPE)
            {
                message = GameObject.Instantiate(LandscapeImagePrefab, MessageChannel.ContentPanel.transform);
            }
            else
            {
                message = GameObject.Instantiate(PortraitImagePrefab, MessageChannel.ContentPanel.transform);
            }
            message.GetComponent<ImageMessageUI>().image.sprite = im.sprite;
            
        }
        else if (e.Channel == "Group")
        {
            message = GameObject.Instantiate(MessageChannel.IncomingMessagePrefab, MessageChannel.ContentPanel.transform);
            //If we're in a group chat, the message has a portrait and a name that needs to be set up.

            Talking T = message.GetComponent<Talking>();
            T.NameText.text = (e.CharacterName + " is typing...");

            MessageUI M = message.GetComponent<MessageUI>();
            Channel CharChannel = Channels.Find(x => x.ChannelName == e.CharacterName);
            if (CharChannel != null)
            {
                M.CharacterImage.sprite = CharChannel.Portrait;
            }
            M.MessageText.text = e.Content;

        }
        else
        {
            message = GameObject.Instantiate(MessageChannel.IncomingMessagePrefab, MessageChannel.ContentPanel.transform);
            Talking T = message.GetComponent<Talking>();
            T.NameText.text = (e.CharacterName + " is typing...");

            MessageUI M = message.GetComponent<MessageUI>();
            //Single messages don't have to worry about the name or portrait either, just the text content
            M.MessageText.text = e.Content;
            
        }
        Canvas.ForceUpdateCanvases();
        if (MessageChannel.ContentPanel.activeInHierarchy)
        {
            MessageChannel.ContentPanel.GetComponentInParent<ScrollRect>().verticalNormalizedPosition = 0f;
        }

        Canvas.ForceUpdateCanvases();
    }

    public void PostAnimationCleanup()
    {

    }

    public void DisplayChoiceEvent(ChoiceEvent e)
    {
        Channel MessageChannel = Channels.Find(x => x.ChannelName == e.Channel);
        if (MessageChannel != null)
        {
            //TODO: Instead of instantly displaying the panel, think about the actual flow we want here - some sort of notification system?
            if (CurrentlyActiveChannel != e.Channel)
            {
                HideAllMessagePanels();
                MessageChannel.MessagePanel.SetActive(true);
            }
            //TODO: Figure out the length of the message and change the prefab based on that

            GameObject message;
            
            message = GameObject.Instantiate(ChoicePrefab, MessageChannel.ContentPanel.transform);
            for(int i=0;i<e.Choices.Count;i++)
            {
                GameObject ChoiceButton = GameObject.Instantiate(ChoiceButtonPrefab, message.transform);
                ChoiceButton.GetComponentInChildren<TMPro.TextMeshProUGUI>().text = e.Choices[i];
                int choiceIndex = i;
                ChoiceButton.GetComponentInChildren<Button>().onClick.AddListener(delegate { HandleChoice(e.Channel, choiceIndex, message, e.Choices); });
            }

            Canvas.ForceUpdateCanvases();
            if (MessageChannel.ContentPanel.activeInHierarchy)
            {
                MessageChannel.ContentPanel.GetComponentInParent<ScrollRect>().verticalNormalizedPosition = 0f;
            }

            Canvas.ForceUpdateCanvases();

        }
    }

    public void HandleChoice(string Channel, int ChoiceIndex, GameObject ChoiceUI, List<string> choices)
    {
        Debug.Log("Handle choice called with channel " + Channel + " and index " + ChoiceIndex);
        InkManager.instance.HandleChoice(Channel, ChoiceIndex);
        string ChoicesString = "";
        foreach (string choice in choices)
        {
            ChoicesString += choice + " ---- ";
        }
        Debug.Log(AnalyticsEvent.Custom("choice_made", new Dictionary<string, object>
        {
            { "choice_text", ChoicesString },
            { "choice_chosen", ChoiceIndex }
        }));
        GameObject.Destroy(ChoiceUI);
        TimelineManager.instance.ChoiceMade();

    }

    public void AddRelationshipValue(string channel, int RelationshipChange)
    {
        Channel MessageChannel = Channels.Find(x => x.ChannelName == channel);
        if (MessageChannel != null)
        {
            MessageChannel.RelationshipValue += RelationshipChange;
        }
    }

    public int GetRelationshipValue(string character)
    {
        Channel MessageChannel = Channels.Find(x => x.ChannelName == character);
        if (MessageChannel != null)
        {
            return MessageChannel.RelationshipValue;
        }
        return 0;
    }

    public string GetCurrentlyActiveChannel()
    {
        return CurrentlyActiveChannel;
    }

    public void SetDebugTimeText(string Timestring)
    {
        debugTimeText.text = Timestring;
    }

    public void OnPlayerNameEntered(string name)
    {
        PlayerName = name;

        Debug.Log("Set name " + name);
    }

    public void OnPronounChosen(int pronoun)
    {
        
        PlayerPronoun = (Pronoun)pronoun;

        Debug.Log("Chose pronoun " + PlayerPronoun);
    }

    public string GetPlayerName()
    {
        return PlayerName;
    }

    public Pronoun GetPlayerPronoun()
    {
        return PlayerPronoun;
    }

    public void SetPlayerName(string name)
    {
        PlayerName = name;
    }

    public void SetPlayerPronoun(Pronoun pronoun)
    {
        PlayerPronoun = pronoun;
    }

    //He/they/she
    public string GetPersonalPronoun()
    {
        switch (PlayerPronoun)
        {
            case Pronoun.HE:
                return "he";
            case Pronoun.SHE:
                return "she";
            case Pronoun.THEY:
                return "they";
            default:
                return "they";
        }
    }

    //Their/hers/his
    public string GetPossessivePronoun()
    {
        switch (PlayerPronoun)
        {
            case Pronoun.HE:
                return "his";
            case Pronoun.SHE:
                return "hers";
            case Pronoun.THEY:
                return "theirs";
            default:
                return "theirs";
        }
    }

    //Her/them/him
    public string GetObjectivePronoun()
    {
        switch (PlayerPronoun)
        {
            case Pronoun.HE:
                return "him";
            case Pronoun.SHE:
                return "her";
            case Pronoun.THEY:
                return "them";
            default:
                return "them";
        }
    }

    public void CloseNameEntryPanel()
    {
        NameEntryPanel.SetActive(false);
        NarrativeIntroPanel.GetComponent<Image>().DOFade(0.0f, 5.0f).OnComplete(CloseNarrativeIntroPanel);
        NarrativeIntroPanel.GetComponentInChildren<TextMeshProUGUI>().DOFade(0.0f, 3.0f);
    }


    public void CloseNarrativeIntroPanel()
    {
        NarrativeIntroPanel.SetActive(false);
        TimelineManager.instance.WaitingForNameInput = false;

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
