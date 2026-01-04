Set Objet = CreateObject("Scripting.FileSystemObject")
InStr1 = Objet.OpenTextFile("config.properties", 1).ReadAll
Get0 = Replace(InStr1, "Game_Language=zh", "Game_Language=")
Objet.OpenTextFile("config.properties", 2).Write Get0
On Error Resume Next
Objet.DeleteFile "Data\StreamingAssets\Languages\zh.json", True
Objet.DeleteFile "config_ht_properties", True
On Error Goto 0
MsgBox "现已重置为原版英语，且不可恢复！如需再次汉化，请联系汉化作者"& vbcrlf &"　　　　　　　　　——by ArtsticH（抖音@跑偏了的设计师|航拍调色）", 48, "RisingWorld 设计师汉化插件"
WScript.CreateObject("WScript.Shell").Run "https://github.com/ArtsticH/RisingWorld", 3
Objet.DeleteFile WScript.ScriptFullName, True