using System.Collections;
using UnityEngine;
using UnityEngine.UI;

public class MessageUI : MonoBehaviour
{
    public GameObject TypingPrefab;
    public GameObject MessagePrefab;
    public TMPro.TextMeshProUGUI MessageText;
    public TMPro.TextMeshProUGUI CharacterNameText;
    public Image CharacterImage;
    public RectTransform MessagePrefabRect;
    public Animator animator;

    [HideInInspector]
    public Channel MessageChannel;

    public float AnimationWaitTime = 0.2f;

    public void BeginAnimation()
    {
        StartCoroutine(EndAnimation());
    }

    IEnumerator EndAnimation()
    {
        yield return new WaitForSeconds(AnimationWaitTime);
        animator.StopPlayback();
        animator.enabled = false;
        TypingPrefab.SetActive(false);
        MessagePrefab.SetActive(true);
        yield return new WaitForEndOfFrame();
        OnAnimationFinished();
    }

    public void OnAnimationFinished()
    {
        //We also need to disable the animator component so that it doesn't activate again when the panel is reactivated
        
        Debug.Log("OnAnimationFinished");

        //Here we need to calculate the proper size for the text box, because the text component will actually be active
        MessageText.ForceMeshUpdate();
        float TextHeight = MessageText.preferredHeight;
        float TextWidth = MessageText.preferredWidth;
        int linecount = MessageText.textInfo.lineCount;

        RectTransform rt = this.gameObject.transform as RectTransform;
        Debug.Log("Message height: " + TextHeight + " line count: " + linecount + " rect width: " +rt.rect.width);
        rt.sizeDelta = new Vector2(rt.rect.width, TextHeight + 10);

        DisplayManager.instance.CleanCanvases(MessageChannel);
    }
}
