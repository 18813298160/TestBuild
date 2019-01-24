@echo off  
 
echo generating apk file...  
 
REM "C:\Program Files\Unity\Editor\Unity.exe" -projectPath C:\Users\hushiyu\Desktop\TestProject\PracticeProject -quit -batchmode -executeMethod BuildTest.Test -logFile build.log
 
"C:\Program Files\Unity\Editor\Unity.exe" -projectPath %2 -quit -batchmode -executeMethod BuildTest.Test -logFile build.log
 
echo generate apk done!  
pause 