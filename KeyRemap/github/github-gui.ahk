#Requires AutoHotkey v2.0
#SingleInstance Force

;This for desktop APP and not console APP


;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 22:31:11  on 7/4/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
; froked from "swiftintract for git hub project" by xmaxrayx


;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 12:09:45  on 11/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}




;/ for sitting ini
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
global githubExe := "ahk_exe GitHubDesktop.exe"
global enableSoundBeep := 1
global enableSmartDeleteFuture := 1
global enableDebug := 0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


global github_gui_shortcutList := []
global github_gui_wordList := []


global github_commitMessageContainer := []


;//////////////////////////
#HotIf WinActive(githubExe)




github_gui_shortcutList.Push("LCtrl + A => Auto-add commit message")
~LCtrl & a:: {


    SendInput '{Ctrl Down}g{Ctrl up}'
    Sleep(50)
    SendInput("add")
    Sleep(50)
    SendInput '{Ctrl Down}{Enter Down}{Enter up}{Ctrl up}'
    Sleep(1000)
    SendInput '{Ctrl Down}p{Ctrl up}'



    if enableSoundBeeb := 1 {
        SoundBeep
    }


    ;//
    global github_commitMessageContainer := []
}



github_gui_shortcutList.Push("LAlt + A => `"Add as word`"")
github_gui_wordList.Push("add => add")
LAlt & a::
::add::{
    SendInput 'add '
}




#HotIf GetKeyState("Ctrl", "P") && WinActive(githubExe)
global github_gui_shortcutList 

loop github_gui_wordList.Length{
    global github_gui_wordList__str .=  github_gui_wordList[A_Index] "`n"
}

loop github_gui_shortcutList.Length{
    global github_gui_shortcutList__str .=  github_gui_shortcutList[A_Index] "`n"
}
~LWin & F1:: {


    MsgBox "[shortcut]`n"  github_gui_shortcutList__str "[hotstring]`n" github_gui_wordList__str 
}

#HotIf







if !WinExist(githubExe){
    WinWait(githubExe)
}

SoundBeep
while WinExist(githubExe){
    sleep 50000
    if !WinExist(githubExe){
        SoundBeep(1000,500)
        SoundBeep(1000,500)
        ExitApp
    }
}
