#Requires AutoHotkey v2.0

~f13 & Ctrl::MsgBox


~f13 & l:: MsgBox


~f14 & l:: MsgBox


#HotIf GetKeyState("F14", "P")
ctrl & h::MsgBox


#HotIf

~CtrlBreak::MsgBox "ctrl break"
; ~Pause::MsgBox  "Pause"


; Pause::{
;     SendInput "{vkE8}"
;     SendInput("{RWin}")
; }


; ~Pause::{
;     Rwin


Pause::{
    SendInput "{vkE8}"
    SendInput("{{RWin Down}")

    KeyWait("Rwin" , "L")
    SendInput("{RWin Up}")
}

