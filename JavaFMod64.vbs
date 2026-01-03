Set Int1 = CreateObject("Scripting.FileSystemObject")
Get0 = Int1.OpenTextFile("config.properties", 1).ReadAll
If InStr(Get0, "Game_Language=zh") > 0 Then
    MsgBox "当前正常，无需二次汉化", 64, "RisingWorld 设计师汉化插件"
Else
    Array1 = Replace(Get0, "Game_Language=", "Game_Language=zh")
    Int1.OpenTextFile("config.properties", 2).Write Array1
    MsgBox "汉化已完成，正在写入到配置文件…"& vbCrLf &"---------------------------------------------------"& vbCrLf &"↖请等待【cmd黑色窗口】自动消失后再进入游戏！否则游戏会报错"& vbCrLf &"若未出现【cmd黑色窗口】说明已写入完毕，请直接点[确定]"& vbCrLf &"---------------------------------------------------"& vbCrLf &"如果不懂在说什么，请直接等待3-5秒再点[确定]", 48, "RisingWorld 设计师汉化插件"
End If