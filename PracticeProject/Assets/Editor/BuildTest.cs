using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class BuildTest : Editor {

    [MenuItem("Tools/TryBuild")]
    public static void Test()
    {
        BuildTarget buildTarget = BuildTarget.Android;
        EditorUserBuildSettings.SwitchActiveBuildTarget(buildTarget);

        List<string> levels = new List<string>();
        foreach (EditorBuildSettingsScene scene in EditorBuildSettings.scenes)
        {
            if (!scene.enabled) continue;
            // 获取有效的 Scene
            levels.Add(scene.path);
        }
        
        // 打包出 APK 名
        string apkName = string.Format("./{0}.apk", "Test");
        // 执行打包
        string res = BuildPipeline.BuildPlayer(levels.ToArray(), apkName, buildTarget, BuildOptions.None);
 
        AssetDatabase.Refresh();
        
    }
}
