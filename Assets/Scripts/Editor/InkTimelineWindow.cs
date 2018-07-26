using UnityEngine;
using UnityEditor;
using System.Collections;
using Ink.Runtime;

class InkTimelineWindow : EditorWindow
{

    public TextAsset InkStory;

    TextAsset CurrentInkStory;

    [MenuItem("Window/Ink Timeline Window")]
    public static void ShowWindow()
    {
        EditorWindow.GetWindow(typeof(InkTimelineWindow));
    }

    void OnGUI()
    {
        InkStory = (TextAsset)EditorGUILayout.ObjectField(InkStory, typeof(TextAsset), false, null);

        if (InkStory != null && InkStory != CurrentInkStory)
        {
            CurrentInkStory = InkStory;
            Story s = new Story(InkStory.text);

        }
    }
}