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

    
}
