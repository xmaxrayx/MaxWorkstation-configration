#Requires AutoHotkey v2.0
#SingleInstance Force   
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 10:51:00  on 25/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}



vscode:= "ahk_exe Code.exe"


#HotIf WinActive(vscode)

~LWin & E::{
    
    static H := 0
    H += 1

    if H = 1 
        SendInput("{Shift Down}{Ctrl Down}e{Ctrl Up}{Shift Up}")
    else
        H := 0
        SendInput("{Ctrl Down}b{Ctrl Up}")

}

