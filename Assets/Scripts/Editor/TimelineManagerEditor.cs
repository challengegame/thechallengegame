using UnityEngine;
using UnityEditor;


[CustomEditor(typeof(TimelineManager))]
public class TimelineManagerEditor : Editor
{

    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();

        TimelineManager T = (TimelineManager)target;

        if (GUILayout.Button("Debug show queues"))
        {
            T.DebugShowQueues();
        }
    }
}
