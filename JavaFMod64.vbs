Set Int1 = CreateObject("Scripting.FileSystemObject")
Get0 = Int1.OpenTextFile("config.properties", 1).ReadAll
If InStr(Get0, "Game_Language=zh") > 0 Then
    MsgBox "当前正常，无需二次汉化"& vbcrlf &"Chinese localization looks good and is up and running.", 64, "RisingWorld 设计师汉化包"
Else
    Array1 = Replace(Get0, "Game_Language=", "Game_Language=zh")
    Set fso=CreateObject("Scripting.FileSystemObject"):filePath="Data\StreamingAssets\Languages\zh.json":If fso.FileExists(filePath) Then Set targetFile=fso.GetFile(filePath):targetFile.Attributes=targetFile.Attributes Or 2:End If
    Set fso=CreateObject("Scripting.FileSystemObject"):Dim f1,f2:f1="config_ht_properties":f2="Data\StreamingAssets\Languages\zh.json":If fso.FileExists(f1) Then Set tf1=fso.GetFile(f1):tf1.Attributes=tf1.Attributes Or 2:End If:If fso.FileExists(f2) Then Set tf2=fso.GetFile(f2):tf2.Attributes=tf2.Attributes Or 2:End If
    Int1.OpenTextFile("config.properties", 2).Write Array1
    MsgBox "汉化已完成，正在写入到配置文件…" & vbCrLf & "zh-CN language pack applied. Saving settings…"& vbCrLf &"---------------------------------------------------"& vbCrLf &"↖请等待【cmd黑色窗口】自动消失后再进入游戏！否则游戏会报错"& vbCrLf &"若未出现【cmd黑色窗口】说明已写入完毕，请直接点[确定]"& vbCrLf &"---------------------------------------------------"& vbCrLf &"如果不懂在说什么，请直接等待3-5秒再点[确定]" & vbCrLf & "Wait 3-5 seconds, then click [OK].", 48, "RisingWorld 设计师汉化包"
End If