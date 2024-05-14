#Requires AutoHotkey v2.0
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 19:42:47  on 9/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}


#HotIf GetKeyState("Ctrl", "P")
~LWin & P::{
    Run('cmd /c rembg "s"' , , "Min")
}


#HotIf
~LWin & p::{
    RunWait('"MaxAutoRembg.py" "1" "0" "isnet-anime" "0"' , , "Hide")
    SoundBeep
}










