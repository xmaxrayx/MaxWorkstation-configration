; #Requires AutoHotkey v2.0
; Class Car{
; 	CarName:="BMW"
; 	WheelsAmount:=4
; 	TurnSteerWheel()
; 	{
; 		return "no"
; 	}
; 	CarOpenKey(){
		
; 	}
; }
; ; Then create Instane of that class with name BMWConcept
; BMWConcept:= Car()


; MsgBox BMWConcept.CarName

; MsgBox BMWConcept.TurnSteerWheel()



;/##########################################Requires AutoHotkey v2.0



; #SingleInstance force

; ;Declare Class
; Class Window{
; 	Title:= "Untitled - Notepad" ;Variable Title
; 	Activate() ;Activates window with Title - This.Title
; 	{ 
; 		If WinExist(this.Title)
; 			WinActivate 
; 		else
; 			MsgBox  "There is no Window: " This.Title "`nPleas Run Notepad!"

; 	}  	
; }

; ;Create Instance
; SomeWin:=  Window()


; !^a:: { ;Hotkey to run Instance Method
; SomeWin.Activate()
; Return
; } 




;/###########################################################Requires AutoHotkey v2.0


#SingleInstance force

;Declare Class
Class Window{
	
	Get()
	{
		TitleVar := WinGetTitle("A") ; Get title from Active window.
		This.Title:=TitleVar ; Set TitleVar to This.Title
		
		IDVar := WinGetID("A") ; Get ID from Active window.
		This.ID:=IDVar ; Set IDVar to This.ID
	}
	Activate() ;Activates window with Title - This.Title
	{ 
		;MsgBox % This.ID
		WinActivate("ahk_id " This.ID) ;Use word "This" when you reffer to variable of this Class.
		Return This.ID
	}   
	AnnounceWinProps() ;Create message box with title and ID
	{
		MsgBox("Title is: " This.Title "`n ID is: " This.ID)
	}
}
;Create Instance
SomeWin:= Window
return

^!a:: ;Hotkey to run Instance Method

{ ; V1toV2: Added bracket
if WinExist("ahk_class Notepad")
	WinActivate("ahk_class Notepad")
else
{
	MsgBox("There is no Window: Notepad.`nPleas Run Notepad!")
	Exit()
}

SomeWin.get()
SomeWin.AnnounceWinProps()
Return
} ; V1toV2: Added Bracket before hotkey or Hotstring

^!s::
{ ; V1toV2: Added bracket
If SomeWin.ID
	SomeWin.Activate() 
else
	MsgBox("Instance SomeWindow has no ID setted, pleas run SomeWin.get() first!")
return
} ; V1toV2: Added bracket in the end
