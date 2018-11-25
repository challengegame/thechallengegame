using UnityEngine;
using UnityEngine.EventSystems;
using TMPro;

public class LinkHandler : MonoBehaviour, IPointerClickHandler
{
    TextMeshProUGUI textMeshPro;
    Canvas canvas;
    Camera localCamera;

    void Awake()
    {
        textMeshPro = gameObject.GetComponent<TextMeshProUGUI>();
        canvas = gameObject.GetComponentInParent<Canvas>();
        if (canvas.renderMode == RenderMode.ScreenSpaceOverlay)
        {
            localCamera = null;
        }
        else
        {
            localCamera = canvas.worldCamera;
        }
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        int linkIndex = TMP_TextUtilities.FindIntersectingLink(textMeshPro, Input.mousePosition, localCamera);
        if (linkIndex != -1)
        {
            TMP_LinkInfo linkInfo = textMeshPro.textInfo.linkInfo[linkIndex];
            switch (linkInfo.GetLinkID())
            {
                case "BBC":
                    Application.OpenURL("http://www.bbc.co.uk/programmes/articles/22VVM5LPrf3pjYdKqctmMXn/information-and-support");
                    break;
                case "Challenge":
                    Application.OpenURL("https://the-challenge.org/programmes/");
                    break;
            }
        }
    }
}
