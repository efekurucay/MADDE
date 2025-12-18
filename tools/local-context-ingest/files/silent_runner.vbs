Set WshShell = CreateObject("WScript.Shell")

' Eğer bir dosya yolu argümanı geldiyse o klasöre odaklan
If WScript.Arguments.Count > 0 Then
    TargetDir = WScript.Arguments(0)
    WshShell.CurrentDirectory = TargetDir
End If

' Komutu tamamen gizli çalıştır (0 parametresi pencereyi gizler)
' gitingest . komutu çalışır ve digest.txt oluşur
WshShell.Run "cmd /c gitingest .", 0, False
