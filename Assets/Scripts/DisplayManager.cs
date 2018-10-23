using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
#if UNITY_IOS
using UnityEngine.iOS;
#elif UNITY_ANDROID
using Assets.SimpleAndroidNotifications;

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
    public TextMeshProUGUI PlayerTextArea;
    public int RelationshipValue;
    public Color ChatBubbleColor;
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
    public GameObject SquareImagePanel;
    public Image SquareImage;

    public GameObject ChoicePrefab;
    public GameObject ChoiceButtonPrefab;
    public GameObject TypingPrefab;
    public GameObject LandscapeImagePrefab;
    public GameObject PortraitImagePrefab;

    public Color PlayerMessageColor = Color.gray;

    public TMPro.TextMeshProUGUI debugTimeText;

    public float TextDisplaySpeed = 0.01f;
    int CurrentVisibleCharacters;
    int TotalVisibleCharacters;

    IEnumerator TextDisplayCoroutine;

    string CurrentlyActiveChannel = "";

    string PlayerName = "Quinn";
    Pronoun PlayerPronoun = Pronoun.THEY;

    //Queue<GameEvent> DisplayQueue;

    [HideInInspector]
    public bool WaitingForPlayerInput = false;

    //Ink variables
    bool PartyAnetta = false;
    bool DrunkHema = false;
    bool Kebab = false;


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
        //DisplayQueue = new Queue<GameEvent>();
    }

    public void ClearAllChannels()
    {
        foreach (Channel c in Channels)
        {
            for (int i = c.ContentPanel.transform.childCount-1; i >= 0 ; i--)
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
        //Audio Test
        AkSoundEngine.PostEvent("Credits", gameObject);
    }

    public void ShowMainMenu()
    {
        CreditsPanel.SetActive(false);
        HideAllMessagePanels();
        MenuPanel.SetActive(true);
        CurrentlyActiveChannel = "";
        AkSoundEngine.PostEvent("Home", gameObject);
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

    public void ShowSquareImage(Sprite image)
    {
        SquareImagePanel.SetActive(true);
        SquareImage.sprite = image;
    }

    public void CloseImagePanel()
    {
        PortraitImagePanel.SetActive(false);
        LandscapeImagePanel.SetActive(false);
        SquareImagePanel.SetActive(false);
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
            CleanCanvases(MessageChannel);
            CurrentlyActiveChannel = channelName;
            ResizeAllMessagesInChannel(MessageChannel);
            AkSoundEngine.PostEvent("General", gameObject);
        }
    }

    void ResizeAllMessagesInChannel(Channel MessageChannel)
    {
        foreach (Transform child in MessageChannel.ContentPanel.transform)
        {
            MessageUI MUI = child.GetComponent<MessageUI>();
            if (MUI != null)
            {
                if (MUI.MessageText != null)
                {
                    MUI.MessageText.ForceMeshUpdate();
                    float TextHeight = MUI.MessageText.preferredHeight;
                    //int linecount = MUI.MessageText.textInfo.lineCount;
                    //Debug.Log("Message height: " + TextHeight + " line count: " + linecount);
                    RectTransform rt = MUI.gameObject.transform as RectTransform;
                    rt.sizeDelta = new Vector2(rt.rect.width, TextHeight + 10);
                }
            }
        }
        CleanCanvases(MessageChannel);
    }

    void HideAllMessagePanels()
    {
        foreach (Channel c in Channels)
        {
            c.MessagePanel.SetActive(false);
        }
    }


    void ShowPlayerTyping(Channel MessageChannel, string MessageContent)
    {
        TotalVisibleCharacters = MessageChannel.PlayerTextArea.textInfo.characterCount;
        MessageChannel.PlayerTextArea.firstVisibleCharacter = 0;
        CurrentVisibleCharacters = 0;
        if (TextDisplayCoroutine != null)
        {
            StopCoroutine(TextDisplayCoroutine);
        }
        TextDisplayCoroutine = DisplayText(MessageChannel, MessageContent);
        StartCoroutine(TextDisplayCoroutine);
        WaitingForPlayerInput = true;
    }

    IEnumerator DisplayText(Channel MessageChannel, string MessageContent)
    {
        // Force and update of the mesh to get valid information.
        CurrentVisibleCharacters = 0;
        MessageChannel.PlayerTextArea.ForceMeshUpdate();
        TotalVisibleCharacters = MessageChannel.PlayerTextArea.textInfo.characterCount;
        while (CurrentVisibleCharacters <= TotalVisibleCharacters)
        {
            //audio for player choice typed out
            AkSoundEngine.PostEvent("Keyboard", gameObject);
            MessageChannel.PlayerTextArea.maxVisibleCharacters = CurrentVisibleCharacters; // How many characters should TextMeshPro display?
            CurrentVisibleCharacters += 1;
            if (CurrentVisibleCharacters > 30)
            {
                MessageChannel.PlayerTextArea.firstVisibleCharacter = CurrentVisibleCharacters - 30;
            }
            yield return new WaitForSeconds(TextDisplaySpeed);
        }
        //Debug.Log("Done revealing the text.");
        //TODO: ACtually display the player message here
        DisplayPlayerMessage(MessageChannel, MessageContent);
    }

    public void PlayerInputButtonPress()
    {
        if (CurrentVisibleCharacters < TotalVisibleCharacters)
        {
            CurrentVisibleCharacters = TotalVisibleCharacters;
            StopCoroutine(TextDisplayCoroutine);
            StartCoroutine(TextDisplayCoroutine);

        }
    }

    void DisplayPlayerMessage(Channel MessageChannel, string MessageContent)
    {
        GameObject message;
        message = GameObject.Instantiate(MessageChannel.OutgoingMessagePrefab, MessageChannel.ContentPanel.transform);
        MessageUI M = message.GetComponent<MessageUI>();
        //Player messages don't have a name or portrait to worry about
        M.MessageText.text = MessageContent;
        M.MessageText.ForceMeshUpdate();
        M.CharacterName = "Player";
        M.BackgroundImage.color = PlayerMessageColor;
        //Canvas.ForceUpdateCanvases();
        float TextHeight = M.MessageText.preferredHeight;
        int linecount = M.MessageText.textInfo.lineCount;
        //Debug.Log("Message height: " + TextHeight + " line count: " + linecount);
        //This is here to work around a bug in TMP where it doesn't always provide an accurate linecount/height if text is very close to the limit
        //A character count is a terribly rough way to do this, but worst case is it makes extra-wide messages when they're not needed, which is
        //better than overflowing
        if (linecount == 1 && MessageContent.Length >= 36)
        {
            TextHeight *= 2;
        }
        RectTransform rt = M.gameObject.transform as RectTransform;
        rt.sizeDelta = new Vector2(rt.rect.width, TextHeight + 10);
        CleanCanvases(MessageChannel);
        MessageChannel.PlayerTextArea.text = "";
        WaitingForPlayerInput = false;
        //audio player sends message
        AkSoundEngine.PostEvent("Reply", gameObject);

    }


    public void DisplayEvent(GameEvent e, bool restoring=false)
    {
        //Debug.Log("DisplayEvent "+e.Content+ " " + e.Channel+ " restoring: "+restoring);
        Channel MessageChannel = Channels.Find(x => x.ChannelName == e.Channel);
        if (MessageChannel != null)
        { 
            if (e.CharacterName.ToLower() == "player")
            {
                if (restoring)
                {
                    DisplayPlayerMessage(MessageChannel, e.Content);

                }
                else if (MessageChannel.PlayerTextArea != null)
                {
                    MessageChannel.PlayerTextArea.text = e.Content;
                    ShowPlayerTyping(MessageChannel, e.Content);
                }
            }
            else
            {

                string PreviewText = "";
                if (e.Content.Length > 20)
                {

                    PreviewText = e.Content.Substring(0, 17);
                    PreviewText += "...";
                    if (PreviewText.Contains("<sprite name"))
                    {
                        int endIndex = e.Content.IndexOf('>');
                        PreviewText = e.Content.Substring(0, endIndex);
                    }
                }
                else
                {
                    PreviewText = e.Content;
                }
                MessageChannel.chatMenuButton.SetPreviewText(PreviewText);

                if (CurrentlyActiveChannel != e.Channel && !restoring)
                {
                    MessageChannel.chatMenuButton.AddUnreadNotification();
                    MessageChannel.chatMenuButton.transform.SetAsFirstSibling();
                    //TODO: Only launch these if the app is not "in focus" or whatever
                    //TODO: Move this to the point where the message is queued and schedule based on the delay value
                    //TODO: Combine all received messages into one notification
                    if (TimelineManager.instance.Paused)
                    {
#if UNITY_IOS
                        UnityEngine.iOS.LocalNotification localNotification = new UnityEngine.iOS.LocalNotification();

                        localNotification.fireDate = System.DateTime.Now;
                        localNotification.alertBody = e.Channel + ": " + PreviewText;
#elif UNITY_ANDROID
                        NotificationManager.Send(TimeSpan.FromSeconds(5), "The Challenge", e.Channel + ": "+PreviewText, new Color(1f, 0.3f, 0.15f));
#endif
                    }
                    ShowMessage(e, MessageChannel);
                    //audio for offscreen notifications
                    if (e.Channel == "Group")
                    {
                        AkSoundEngine.PostEvent("Group", gameObject);
                    }
                    else
                    {
                        AkSoundEngine.PostEvent(e.CharacterName, gameObject);
                    }
                }
                else
                {
                    ShowMessage(e, MessageChannel);
                    //audio for onscreen reply
                    AkSoundEngine.PostEvent("Message", gameObject);
                }

            }
        }


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
                AkSoundEngine.PostEvent("Picture", gameObject);
                message = GameObject.Instantiate(PortraitImagePrefab, MessageChannel.ContentPanel.transform);
            }
            message.GetComponent<ImageMessageUI>().image.sprite = im.sprite;
            CleanCanvases(MessageChannel);

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
                M.BackgroundImage.color = CharChannel.ChatBubbleColor;
            }
            M.MessageText.text = e.Content;
            M.MessageChannel = MessageChannel;
            M.CharacterName = e.CharacterName;
            
            if (CurrentlyActiveChannel != e.Channel)
            {
                StartCoroutine(PreFinishAnimation(M));
            }
            else
            {
                BeginAnimation(M);
            }

        }
        else
        {
            message = GameObject.Instantiate(MessageChannel.IncomingMessagePrefab, MessageChannel.ContentPanel.transform);
            Talking T = message.GetComponent<Talking>();
            T.NameText.text = (e.CharacterName + " is typing...");

            MessageUI M = message.GetComponent<MessageUI>();
            //Single messages don't have to worry about the name or portrait either, just the text content
            M.MessageText.text = e.Content;
            M.MessageChannel = MessageChannel;
            M.CharacterName = e.CharacterName;
            M.BackgroundImage.color = MessageChannel.ChatBubbleColor;
            if (CurrentlyActiveChannel != e.Channel)
            {
                StartCoroutine(PreFinishAnimation(M));
            }
            else
            {
                BeginAnimation(M);
            }

        }
        
    }

    public void DisplayChoiceEvent(ChoiceEvent e)
    {
        Channel MessageChannel = Channels.Find(x => x.ChannelName == e.Channel);
        if (MessageChannel != null)
        {
            //TODO: Instead of instantly displaying the panel, think about the actual flow we want here - some sort of notification system?
            /*
             * if (CurrentlyActiveChannel != e.Channel)
            {
                HideAllMessagePanels();
                MessageChannel.MessagePanel.SetActive(true);
            }
            */

            GameObject message;
            
            message = GameObject.Instantiate(ChoicePrefab, MessageChannel.ContentPanel.transform);
            for(int i=0;i<e.Choices.Count;i++)
            {
                GameObject ChoiceButton = GameObject.Instantiate(ChoiceButtonPrefab, message.transform);
                ChoiceButton.GetComponentInChildren<TMPro.TextMeshProUGUI>().text = e.Choices[i];
                int choiceIndex = i;
                ChoiceButton.GetComponentInChildren<Button>().onClick.AddListener(delegate { HandleChoice(e, e.Channel, choiceIndex, message, e.Choices); });
                //audio for choice
                AkSoundEngine.PostEvent("ChoiceAppear", gameObject);
            }

            CleanCanvases(MessageChannel);

        }
    }

    public void BeginAnimation(MessageUI MUI)
    {
        StartCoroutine(EndAnimation(MUI));
        //audio for npc is typing
        AkSoundEngine.PostEvent("IsTyping", gameObject);
    }

    IEnumerator EndAnimation(MessageUI MUI)
    {
        yield return new WaitForSeconds(MUI.AnimationWaitTime);

        StartCoroutine(PreFinishAnimation(MUI));
        //audio
        AkSoundEngine.PostEvent("StopIsTyping", gameObject);
    }

    IEnumerator PreFinishAnimation(MessageUI MUI)
    {
        //Debug.Log("PreFinishAnim " + MUI.MessageText.text);
        MUI.animator.StopPlayback();
        MUI.animator.enabled = false;
        MUI.TypingPrefab.SetActive(false);
        MUI.MessagePrefab.SetActive(true);
        yield return new WaitForEndOfFrame();
        OnAnimationFinished(MUI);
    }

    void OnAnimationFinished(MessageUI MUI)
    {
        //We also need to disable the animator component so that it doesn't activate again when the panel is reactivated

        //Debug.Log("OnAnimationFinished");

        //Here we need to calculate the proper size for the text box, because the text component will actually be active
        MUI.MessageText.ForceMeshUpdate();
        float TextHeight = MUI.MessageText.preferredHeight;
        float TextWidth = MUI.MessageText.preferredWidth;
        //int linecount = MUI.MessageText.textInfo.lineCount;

        RectTransform rt = MUI.gameObject.transform as RectTransform;
        //Debug.Log("Message height: " + TextHeight + " line count: " + linecount + " rect width: " + rt.rect.width);
        rt.sizeDelta = new Vector2(rt.rect.width, TextHeight + 10);

        CleanCanvases(MUI.MessageChannel);
        LayoutRebuilder.ForceRebuildLayoutImmediate(MUI.MessageChannel.ContentPanel.transform as RectTransform);
    }

    public void CleanCanvases(Channel MessageChannel)
    {
        Canvas.ForceUpdateCanvases();
        if (MessageChannel.ContentPanel.activeInHierarchy)
        {
            MessageChannel.ContentPanel.GetComponentInParent<ScrollRect>().verticalNormalizedPosition = 0f;
        }

        Canvas.ForceUpdateCanvases();
    }

    public void HandleChoice(ChoiceEvent e, string Channel, int ChoiceIndex, GameObject ChoiceUI, List<string> choices)
    {
        //Debug.Log("Handle choice called with channel " + Channel + " and index " + ChoiceIndex);
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
        AkSoundEngine.PostEvent("ChoicePick", gameObject);
        TimelineManager.instance.ChoiceMade(e);

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

    public void KeyboardInput()
    {
        AkSoundEngine.PostEvent("KeyboardPlayer", gameObject);
    }

    public void OnPronounChosen(int pronoun)
    {

        PlayerPronoun = (Pronoun)pronoun;
        AkSoundEngine.PostEvent("ChoicePick", gameObject);

        //Debug.Log("Chose pronoun " + PlayerPronoun);
    }

    //Ink functions

    public bool GetPartyAnetta()
    {
        return PartyAnetta;
    }

    public void SetPartyAnetta(bool party)
    {
        PartyAnetta = party;
    }

    public bool GetHemaDrunk()
    {
        return DrunkHema;
    }

    public void SetHemaDrunk(bool drunk)
    {
        DrunkHema = drunk;
    }

    public bool GetKebab()
    {
        return Kebab;
    }

    public void SetKebab(bool kebab)
    {
        Kebab = kebab;
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
        //Audio for seven days splash
        AkSoundEngine.PostEvent("SevenDays", gameObject);
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