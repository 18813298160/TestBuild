@echo off  
 
echo 正在生成APK文件...  
 
"C:\Program Files\Unity\Editor\Unity.exe" -projectPath C:\Users\hushiyu\Desktop\TestProject\PracticeProject -quit -batchmode -executeMethod BuildTest.Test -logFile build.log
 
REM %1 -projectPath %2 -quit -batchmode -executeMethod BuildTest.Test -logFile build.log
 
echo APK文件生成完毕!  
pause 