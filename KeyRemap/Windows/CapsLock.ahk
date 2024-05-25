#Requires AutoHotkey v2.0

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 20:02:12  on 8/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

; global capsstatus := GetKeyState("CapsLock", "T")


SetCapsLockState("AlwaysOff")



; AHK_capsstatusGUI := Gui("-sysmenu +E0x20 -Caption AlwaysOnTop +ToolWindow " ,"AHK_capsstatus")    

AHK_capsstatusGUI := Gui("+E0x20 -Caption +LastFound +ToolWindow +AlwaysOnTop","AHK_capsstatus")  
WinSetTransparent(250)  
AHK_capsstatusGUI.BackColor := "2fff00"
capsstatus := AHK_capsstatusGUI.Add("Text", , AHK__capslockWatcher__func())


AHK_capsstatusGUI.Show("y" A_ScreenHeight-50 " x" 200 ,)
if !GetKeyState("CapsLock", "T")
    AHK_capsstatusGUI.Hide()



AHK__capslockWatcher__func(){
    if GetKeyState("CapsLock", "T") {
        AHK_capsstatusGUI.BackColor := "22ff00"
        SoundBeep
        return "Capslock  On" 
    }else{
        
        AHK_capsstatusGUI.BackColor := "fc0000"
        AHK_capsstatusGUI.Hide()
        return "Capslock OFF"

    }
}










#HotIf GetKeyState("Ctrl", "P")
~LWin & Del::{
    
    SetCapsLockState !GetKeyState("CapsLock", "T")
    
    capsstatus.Text := AHK__capslockWatcher__func()
    IF GetKeyState("CapsLock", "T")
        AHK_capsstatusGUI.Show("NoActivate")
    else 
        AHK_capsstatusGUI.Hide()



}


#HotIf
~CapsLock::F13
CapsLock::F13

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



