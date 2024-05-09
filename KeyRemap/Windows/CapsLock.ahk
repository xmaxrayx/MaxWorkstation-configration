#Requires AutoHotkey v2.0

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 20:02:12  on 8/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

SetCapsLockState("AlwaysOff")

#HotIf

~LWin & Del::{
    
    SetCapsLockState !GetKeyState("CapsLock", "T")
    
}

~CapsLock::F13