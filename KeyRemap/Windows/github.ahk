#Requires AutoHotkey v2.0


#HotIf
~LWin & g::{

    static github := "ahk_exe GitHubDesktop.exe"
    SendInput("{" A_MenuMaskKey "}")
    SendInput("{vkE8}")
    if WinActive(github)
        WinMinimize(github)
    else if WinExist(github)
        WinActivate(github)
    else 
        Run("C:\Users\Max_Laptop\Programming\Github\xMaxrayx_Github\MaxWorkstation-configration\KeyRemap\github\github-desktop-manger.ahk")

KeyWait("Lwin" , "L")
SendInput("{vkE8}")
SendInput("{" A_MenuMaskKey "}")
}

#HotIf GetKeyState("Ctrl", "P")

~LWin & g::{
    
    static github := "ahk_exe GitHubDesktop.exe"

    if WinActive(github)
        WinClose(github)
    else if WinExist(github)
        WinActivate(github)
    else
        Run("C:\Users\Max_Laptop\Programming\Github\xMaxrayx_Github\MaxWorkstation-configration\KeyRemap\github\github-desktop-manger.ahk")


}
