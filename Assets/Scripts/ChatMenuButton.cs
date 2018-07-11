using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChatMenuButton : MonoBehaviour
{
    public Image PortraitImage;
    public Image NotificationBadge;
    public TMPro.TextMeshProUGUI MessageNotificationText;
    public TMPro.TextMeshProUGUI MessagePreviewText;

    int CurrentNotificationCount = 0;

    public void AddUnreadNotification()
    {
        CurrentNotificationCount++;
        MessageNotificationText.text = CurrentNotificationCount.ToString();
        NotificationBadge.gameObject.SetActive(true);
    }

    public void SetNotificationsRead()
    {
        CurrentNotificationCount = 0;
        MessageNotificationText.text = "";
        NotificationBadge.gameObject.SetActive(false);
    }

    public void SetPreviewText(string preview)
    {
        MessagePreviewText.text = preview;
    }
}
