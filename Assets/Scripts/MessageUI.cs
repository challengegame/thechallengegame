using UnityEngine;
using UnityEngine.UI;

public class MessageUI : MonoBehaviour
{
    public TMPro.TextMeshProUGUI MessageText;
    public TMPro.TextMeshProUGUI CharacterNameText;
    public Image CharacterImage;
    public RectTransform MessagePrefabRect;
    public Animator animator;

    public void OnAnimationFinished()
    {
        //We also need to disable the animator component so that it doesn't activate again when the panel is reactivated
        animator.enabled = false;
        Debug.Log("OnAnimationFinished");
        //Here we need to calculate the proper size for the text box, because the text component will actually be active
        MessageText.ForceMeshUpdate();
        float TextHeight = MessageText.preferredHeight;
        int linecount = MessageText.textInfo.lineCount;
        Debug.Log("Message height: " + TextHeight + " line count: " + linecount);
        RectTransform rt = MessagePrefabRect;
        rt.sizeDelta = new Vector2(rt.rect.width, TextHeight + 10);


    }
}
