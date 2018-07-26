using UnityEngine;
using UnityEditor;
using Ink;

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
        /*
        Rect lastRect = GUILayoutUtility.GetLastRect();
        var space = GUILayoutUtility.GetRect(GUIContent.none, GUIStyle.none, GUILayout.Height(EditorGUIUtility.singleLineHeight));
        //Rect singleFieldRect = new Rect(lastRect.position.x, lastRect.position.y + lastRect.height + 5, lastRect.width, EditorGUIUtility.singleLineHeight );
        EditorGUI.DrawRect(space, Color.green);
        */


    }


}
