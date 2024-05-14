#Requires AutoHotkey v2.0
#SingleInstance Force

;--under "laptop configuration" project I regret I didn't use branch because my old code was better :(
; v1 [Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 12:35:16  on 24/4/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
; v1.5 [Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 10:20:40  on 25/4/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
; v2.0 [Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 12:28:32  on 27/4/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
; v3.0 [Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 12:06:12  on 28/4/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
; v4.0 [Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 12:42:00  on 29/4/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}


;-- under "MaxWorkstation configuration" project
; v5.0 [Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 18:06:31  on 6/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}



global generalShortcuts := ""


;===========global=====
global musicPlayerPath := "C:\Program Files (x86)\MusicBee\MusicBee.exe" 
global toDoShortcutPath := "C:\Users\Max_Laptop\Desktop\todoshortcut.lnk"  

global fastTypeKeyboardApp__Path := "C:\Program Files (x86)\Tipp10\tipp10.exe"
global fastTypeKeyboardApp__Name := "ahk_exe tipp10.exe"

global LMM__Name := "ahk_exe LM Studio.exe"
global LMM__Path := 'C:\Users\Max_Laptop\AppData\Local\LM-Studio\LM Studio.exe'


global YTDownlowderPath := "C:\Users\Max_Laptop\AppData\Local\Programs\youtube-dl-gui\Open Video Downloader.exe"


global OneNote_EXE__Path := "C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE"
global OneNote_EXE__Name := "ahk_exe ONENOTE.EXE"


global quick_oneNote_ID := unset


;========================

;==========global decencies 

;for music Download




; MsgBox A_MenuMaskKey
; A_MenuMaskKey := "vkE8"  ;/

#HotIf


global generalShortcuts .= "`nLwin => F13" 
~LWin up::{

    SendInput("{F13 Up}")
    ; SendInput("{" A_MenuMaskKey "}")
}   



~LWin::{
    SendInput("{" A_MenuMaskKey "}")
    SendInput("{F13 Down}")
}


global generalShortcuts .= "`nLWin + ' => music player "
~LWin & ~'::{ 
    

    DetectHiddenWindows(0) ;must 0 for not trigger heddin winodw like splash
    runMusicPlayer("MusicBee.exe", musicPlayerPath , "ahk_class WindowsForms10.Window.8.app.0.2bf8098_r8_ad1" , "MusicBee")




    runMusicPlayer(EXE__Name,EXE__path ,className , title){
        ;SendInput("{Launch_Media}")
    
        if !IsSet(EXE__Name){
    
            local musicExe := RegExMatchInfo
            RegExMatch(musicPlayerPath, "i)[a-zA-Z1-9\h]+\.exe$" , &musicExe) ;\h > horazinial white space
            EXE__Name := musicExe[0]
            ; MsgBox name := musicExe[0]
        }
        
        EXE__Name := ("ahk_exe " EXE__Name)


        if WinExist(EXE__Name) && !WinActive(EXE__Name){  ;ahk_exe MusicBee.exe
            global oldWinActive__beforeMusicPlayer:= unset        
            try {
                global oldWinActive__beforeMusicPlayer := WinGetID("A")
                global oldWinActive__beforeMusicPlayer := ("ahk_id " oldWinActive__beforeMusicPlayer)
            }catch{
                global oldWinActive__beforeMusicPlayer:= unset    
            }
            ; Win
            global musicWindowPlayerID
            
            WinActivate(musicWindowPlayerID??EXE__Name)
            WinMaximize(musicWindowPlayerID??EXE__Name)
            
        }


        else if (WinActive(EXE__Name)) && IsSet(oldWinActive__beforeMusicPlayer){
            WinMinimize(musicWindowPlayerID??EXE__Name)
            WinActivate(oldWinActive__beforeMusicPlayer)
        }

        else if (WinActive(EXE__Name)) && !IsSet(oldWinActive__beforeMusicPlayer){
            SendInput("{AltTab}")
            SoundBeep
        }
            
    
        else{   
            
            try {
                global oldWinActive__beforeMusicPlayer := WinGetID("A")
                global oldWinActive__beforeMusicPlayer := ("ahk_id " oldWinActive__beforeMusicPlayer)
            }catch{
                global oldWinActive__beforeMusicPlayer:= unset    
            }

            
            Run(EXE__path)
            WinWaitActive("MusicBee") ;ahk-exe  doesn't work corectly
            Sleep(100) ;need seep because splash window got MusicBee with main window for AHK
            global musicWindowPlayerID := WinGetIDLast(title)
                        
        }
    
    }
    



}







global generalShortcuts .= "`nLWin + F1 => `"To Do`" App"
~LWin & F1::{

    DetectHiddenWindows(0) ;must 0 to no activate hedden* window

    if WinActive("Microsoft To Do"){
        WinMinimize("Microsoft To Do")
        ; WinHide("Microsoft To Do")
    }

    else if WinExist("Microsoft To Do"){
        ; WinShow("Microsoft To Do")
        WinActivate("Microsoft To Do")
        WinMaximize("Microsoft To Do")
    }

    else{
        ; WinShow("Microsoft To Do")
    Run(toDoShortcutPath)
    }

}



global generalShortcuts .= "`nLWin + Esc => quick note form `"one note`""
~LWin & Esc::{
    oneNoteManger_Quick____AHK__func()
}


global generalShortcuts .= "`napp shortcut2 (calculator) => fast keyboard trainer"
Launch_App2::{
    AppMangerActivateFunc( fastTypeKeyboardApp__Name , fastTypeKeyboardApp__Path )
}






global generalShortcuts .= "`nLWin + N => onenote"
~LWin & N::{
    oneNoteManger_AHK__func()
}



#HotIf GetKeyState("Ctrl", "P")
LWin & F1:: {
    global generalShortcuts
    MsgBox generalShortcuts 
}
#HotIf




global generalShortcuts .= "`nLWin + space => F24"
~LWin & Space::{
    SendInput("{" A_MenuMaskKey "}")
    Sleep(1)
    SendInput("{F24 Down}{F24 up}")
}


$Browser_Search::{
    ; SendInput("{vkE8}")

    SendInput "{Blind}{vkE8}" 
}
$Browser_Search Up::{
    ; SendInput("{" A_MenuMaskKey "}")
    ; SendInput("{vkE8}")

    SendInput "{Blind}{vkE8}" 
}


global generalShortcuts .= "`nLWin + Browser_Search => LMM "

~LWin & C:: 
~LWin & Browser_Search::{

    global LMM__Name
    global LMM__Path
    
    AppMangerActivateFunc__LMM(LMM__Name, LMM__Path)

    AppMangerActivateFunc__LMM(appNameExe,appExePath){

        if WinActive(appNameExe){
            WinMinimize(appNameExe)
            WinActivate("A")
        }
    
        else if WinExist(appNameExe) && !WinActive(appNameExe){
            WinActivate(appNameExe)
            ; WinActivate("A")
        }
    
        else{
        SoundBeep
        Run("explorer " appExePath)
        WinWait(LMM__Name)
        WinActivate(LMM__Name)
        }
    
    }
}
















AppMangerActivateFunc(appNameExe,appExePath){

    if WinActive(appNameExe){
        WinMinimize(appNameExe)
    }

    else if WinExist(appNameExe){
        WinActivate(appNameExe)
    }

    else{
    Run(appExePath)
    }

}








SaveCurrentWindow(AppName?){

    local oldWinActive:= unset        
    try {
    local oldWinActive := WinGetID("A")
    }catch{
    local oldWinActive := 0
    }



    if oldWinActive != 0 {
        WinActivate oldWinActive
    }
    
    else if IsSet(AppName){
        WinActivate(AppName)
    }

    else{
        SendInput("{ALt Down}{Tab Down}{Tap Up}{Alt up}")
    }

}


oneNoteManger_AHK__func(){
    global OneNote_EXE__Name
    global OneNote_EXE__Path


    
    if (WinExist(OneNote_EXE__Name)) && (!WinActive(OneNote_EXE__Name)) {
        WinActivate(OneNote_EXE__Name)
    }
    else if  WinActive(OneNote_EXE__Name){
        WinMinimize(OneNote_EXE__Name)
    }
    else {
        Run("explorer " OneNote_EXE__Path)
    }
}


oneNoteManger_Quick____AHK__func(){

    global quick_oneNote_ID


    if IsSet(quick_oneNote_ID){
        if WinExist("ahk_id " quick_oneNote_ID) && !WinActive("ahk_id " quick_oneNote_ID) {
            if WinGetTitle("ahk_id " quick_oneNote_ID) == "Untitled page - OneNote"{
                newNote()
            }else{
                WinActivate("ahk_id " quick_oneNote_ID)
            }
            
        }
        else if WinActive("ahk_id " quick_oneNote_ID) {

            if WinGetTitle("ahk_id " quick_oneNote_ID) == "Untitled page - OneNote"{
                WinClose("ahk_id " quick_oneNote_ID)
                global quick_oneNote_ID := unset
                
            }else{
                
                newNote()
            
            }


        }

        else{
            SendInput("{Alt Down}{LWin Down}n{LWin up}{Alt up}")
            try{
                global quick_oneNote_ID := WinGetID("Untitled page - OneNote")
            }catch{
                global quick_oneNote_ID := unset
            }
        }
    }
    else{
        newNote()
    }

    newNote(){
        Sleep(100)
        SendInput("{Alt Down}{LWin Down}n{LWin up}{Alt up}")

        WinWait("Untitled page - OneNote" , , 3)
        while !WinActive("Untitled page - OneNote"){
            WinActivate("Untitled page - OneNote")
        }

        try{
            global quick_oneNote_ID := WinGetID("Untitled page - OneNote")
        }catch{
            global quick_oneNote_ID := unset
        }
    }




}







;/trash






; L::{
;     musicBeeList:= WinGetList("ahk_exe MusicBee.exe")
;     loop musicBeeList.Length
;         MsgBox musicBeeList[A_index]



; ; for this_id in ids
; ; {
; ;     WinActivate this_id
; ;     this_class := WinGetClass(this_id)
; ;     this_title := WinGetTitle(this_id)
; ;     Result := MsgBox(
; ;     (
; ;         "Visiting All Windows
; ;         " A_Index " of " ids.Length "
; ;         ahk_id " this_id "
; ;         ahk_class " this_class "
; ;         " this_title "

; ;         Continue?"
; ;     ),, 4)
; ;     if (Result = "No")
; ;         break
; ; }



; }




