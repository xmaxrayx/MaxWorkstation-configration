#Requires AutoHotkey v2.0
#SingleInstance Force
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 09:55:10  on 12/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
DetectHiddenText(0)

; WinKill("C:\Users\Max_Laptop\Programming\Github\xMaxrayx_Github\MaxWorkstation-configration\KeyRemap\Blender\E_to_WinKEY+F8_AHK_v1(outdated but it works).ahk - AutoHotkey v1.1.37.01")

; a:= WinGetList("ahk")
; loop a.Length
;     s .= "`n" a[A_Index]
; MsgBox WinGetTitle("ahk_id "  1053184 )

; MsgBox s



reMabAHK := unset
global blender__EXE___Path := "C:\Program Files\Blender Foundation\Blender 4.1\blender-launcher.exe"

global blender__EXE_name := "ahk_exe blender.exe"


Run(blender__EXE___Path)

Run('E_to_WinKEY+F8_AHK_v1(outdated but it works).ahk',,,&reMabAHK)



if !WinExist(blender__EXE_name){
    WinWait(blender__EXE_name)
}

SoundBeep
while WinExist(blender__EXE_name){
    sleep 1000
    if !WinExist(blender__EXE_name){
        SoundBeep(1000,500)
        SoundBeep(1000,500)
        ProcessClose(reMabAHK)
        
    }
}
; ProcessClose("ahk_pid " reMabAHK)
DetectHiddenWindows(1)
SetTitleMatchMode(3)
WinKill("C:\Users\Max_Laptop\Programming\Github\xMaxrayx_Github\MaxWorkstation-configration\KeyRemap\Blender\E_to_WinKEY+F8_AHK_v1(outdated but it works).ahk - AutoHotkey v1.1.37.01")
DetectHiddenWindows(0)
ExitApp



