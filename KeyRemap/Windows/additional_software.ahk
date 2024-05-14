#Requires AutoHotkey v2.0
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 10:51:17  on 14/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

global FileAPP_EXE__Path := "C:\Program Files\WindowsApps\Files_3.4.1.0_x64__1y0xx7n9077q4\Files.App\Files.exe"
global FileAPP_EXE__Namea := "ahk_exe Files.exe"

global notepadPlusPlus_Exe__path := "C:\Program Files (x86)\Notepad++\notepad++.exe"
global notepadPlusPlus_Exe__name := "ahk_class Notepad++"



#HotIf
~LWin & F::{
    appLauncher_V1(FileAPP_EXE__Namea , FileAPP_EXE__Path)
} 



#HotIf GetKeyState("Ctrl", "P")
~LWin & N::{ 
    appLauncher_V1(notepadPlusPlus_Exe__name , notepadPlusPlus_Exe__path)
}
#HotIf






appLauncher_V1(exe_name , exe_path){
    if WinActive(exe_name)
        WinMinimize(exe_name)
    else if WinExist(exe_name) ;&& !WinActive(exe_name)
        WinActivate(exe_name)
    else if !WinActive(exe_name)
        WinActivate(exe_name)
    else
        Run(exe_path)
}