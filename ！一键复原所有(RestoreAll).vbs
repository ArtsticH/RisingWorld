Set Objet = CreateObject("Scripting.FileSystemObject")
If Not Objet.FileExists("Data\StreamingAssets\Languages\zh.json") Then MsgBox "尚未汉化，无需清理", 48, "RisingWorld 设计师汉化包" : WScript.Quit
InStr1 = Objet.OpenTextFile("config.properties", 1).ReadAll
Get0 = Replace(InStr1, "Game_Language=zh", "Game_Language=")
Objet.OpenTextFile("config.properties", 2).Write Get0
On Error Resume Next
Objet.DeleteFile "Data\StreamingAssets\Languages\zh.json", True
Objet.DeleteFile "config_ht_properties", True
On Error Goto 0
MsgBox "【  一切恢复如初：现已重置为官方英语原版语言！】"& vbcrlf &"如需再次汉化，请重新下载。关闭本窗口即彻底拜拜~"& vbcrlf &"　　　　　　　　　——by: ArtsticH (抖音@跑偏了的设计师|航拍调色)", 48, "RisingWorld 设计师汉化包：江湖有缘，再会！"
' Objet.DeleteFile WScript.ScriptFullName, True
CreateObject("WScript.Shell").Run "https://github.com/ArtsticH/RisingWorld"
Objet.DeleteFile "*.vbs",True:Objet.DeleteFile "*.bat",True