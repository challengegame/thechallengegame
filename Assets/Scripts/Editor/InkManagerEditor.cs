using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(InkManager))]
public class InkManagerEditor : Editor
{
    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();

        InkManager I = (InkManager)target;

        if (GUILayout.Button("Debug Advance Group Chat"))
        {
            I.AdvanceStory("Group");
        }
    }
}
