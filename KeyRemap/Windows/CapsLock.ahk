#Requires AutoHotkey v2.0

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 20:02:12  on 8/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

SetCapsLockState("AlwaysOff")

#HotIf

~LWin & Del::{
    
    SetCapsLockState !GetKeyState("CapsLock", "T")
    
}

~CapsLock::F13


global QQQ := 0

~LAlt & CapsLock::{
    global QQQ
    switch [QQQ] {
        case 0 :
            global QQQ := 1
            SendInput("{Media_Play_Pause}")
            SendInput("{LAlt Down}{Tab Down}{Tab Up}{LAlt Up}")
        default:
            SendInput("{LAlt Down}{Tab Down}{Tab Up}{LAlt Up}")
            Sleep(500)
            SendInput("{Media_Play_Pause}")
            global QQQ := 0

    }
        
    
}