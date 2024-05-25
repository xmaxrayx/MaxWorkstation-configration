#Requires AutoHotkey v2.0
#SingleInstance Force

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 18:53:32  on 11/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

 #Include <maxray\musicplayerV1>
 global github_desktop_gui_path := "C:\Users\Max_Laptop\AppData\Local\GitHubDesktop\GitHubDesktop.exe"




 m := musicPlayer()
; m.start("Assists\start.wav" ,,,,true)
; m.start("Assists\opning github.wav")


;  SoundPlay("C:\Users\Max_Laptop\Programming\Github\xMaxrayx_Github\MaxWorkstation-configration\KeyRemap\github\Assists\start.wav" , 1)


SoundPlay("Assists\start.wav" )
Sleep(900)
m.start("Assists\opning github.wav")
Sleep 1000

m.start("C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav" )
Run("explorer " github_desktop_gui_path)
; Sleep(300)
WinWaitActive("GitHub")

if !WinExist("GitHub")
    m.close()
    

#Include 'github-gui.ahk'