#Requires AutoHotkey v2.0
; #Warn All, Off

; NewThread ("MsgBox Message from thread")
; SplashImage("C:\Users\Max_Laptop\Pictures\__fuwawa_abyssgard_mococo_abyssgard_mococo_abyssgard_and_fuwawa_abyssgard_hololive_and_1_more_drawn_by_sobbi11__sample-c8325cbe7f14e4386e0cb09390862311.jpg")


#Requires AutoHotkey v2




/*
ExecScript('
(
A_ScriptName := 'Pizza store'
Msgbox("Hi again")
Msgbox("and again Hi")
)')
 
*/
ExecScript(Script, Wait := True) {
    shell := ComObject("WScript.Shell")
    exec := shell.Exec("AutoHotkey.exe /ErrorStdOut *")
    exec.StdIn.Write(Script)
    exec.StdIn.Close()
    if Wait
        return exec.StdOut.ReadAll()
}



MusicPlayer("C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav")






; MusicPlayer()

SoundBeep
a := MusicPlayer(path, fakeThread__ID? , defaultFakeThreadMusicPlayer__Title := "AHK_MusicPlayer" ) {
    
    if ! IsSet(ID){
        global MusicPlayer_ID_list
        MusicPlayer_ID_list := MusicPlayer_ID_list??unset 
        if ! IsSet(MusicPlayer_ID_list){
            MusicPlayer_ID_list := []
            Id := Random(1,9999999999999)
            MusicPlayer_ID_list.Push(id)

            

        }
    }

    
    
    shell := ComObject("WScript.Shell")
    exec := shell.Exec("AutoHotkey.exe /ErrorStdOut *")
    ; Script := (" SoundPlay('" path "' ,1)")


    Script := ("A_ScriptName := ('" defaultFakeThreadMusicPlayer__Title "')`n")


    Script .= ('
    (
    
    i := 1 
    while(i != 0){
    i++
        
    
    )'
)
    
    Script .= ("`nSoundPlay('" path "' ,1)`n }" )
    



    exec.StdIn.Write(Script)
    exec.StdIn.Close()

    return exec.StdOut.ReadAll()
    ; return defaultFakeThreadMusicPlayer__Title . id


}









; MsgBox a.A_ScriptName





; myvar := 50

; Script := "
; (
; 	MsgBox Worker(A_MainThreadID)['myvar']
; )"
; Worker(Script)
; MsgBox "end"

; m := Gui  
    ; m.SoundPlay("C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav" ,1)
    ; OnExit
    
    ; m.Show()






; Alert1()
; {
;     while  i??0 < 10
;         MsgBox
;         SoundPlay("C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav" )
;         Sleep(500)
;         i??i:=0
;         i++
;     if not WinExist("ahk_exe GitHubDesktop.exe")
;         return
;     ; Otherwise:
;     ; i.e. the timer turns itself off here.
;     MsgBox "The video conversion is finished."
; }







; SoundPlay("C:\Users\Max_Laptop\Documents\Audacity\start.wav",1)
; SoundPlay("C:\Users\Max_Laptop\Documents\Audacity\opning github.wav",1)
; ; SetTimer Alert1, 500



; while !WinExist("ahk_exe GitHubDesktop.exe") {
    
;     SoundPlay("C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav" ,1)


; }


