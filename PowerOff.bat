::獲取當前系統時間
for /f "tokens=1-3 delims=:. " %%a in ("%time%") do (
    set hour=%%a
    set minute=%%b
    set second=%%c
)

echo 當前時間為：%hour%:%minute%:%second%

set /a currentTime=(hour * 60 * 60) + (minute * 60) + second

echo 當前時間秒數為 : %currentTime%

::=============================================================================

::設定關機時間為17:20分
set /a shutdownTime=(17 * 60 * 60) + 20 * 60

echo 關機時間秒數為 : %shutdownTime%

::=============================================================================

set /a finalTime=shutdownTime - currentTime

shutdown /s /t %finalTime%