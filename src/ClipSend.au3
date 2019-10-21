$tit="ClipSend – AutoIt"
if not WinExists($tit) Then
Opt("SendAttachMode",1)
Opt("SendKeyDelay",1)
Opt("SendKeyDownDelay",1)
AutoItWinSetTitle($tit)
$loop=true
HotKeySet("{INSERT}","f")
HotKeySet("^{INSERT}","g")
While $loop
Sleep(100)
WEnd
EndIf

Func g()
HotKeySet("{INSERT}")
HotKeySet("^{INSERT}")
$loop=false
EndFunc

Func f()
$str=ClipGet()
$str=StringReplace($str,@LF,"")
Send ($str,1)
EndFunc

;~ EOF