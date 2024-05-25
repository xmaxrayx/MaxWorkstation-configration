#Requires AutoHotkey v2.0


;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 12:15:44  on 16/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}



class animal
{
   static legs := 4
}

class cat extends animal
{
   static speech := "meow"


   static name := "Max"

   get(name){
    this.name := name
   }
}




MsgBox animal.legs



MsgBox cat.legs








; #SingleInstance force

; ;Declare Class
; Class Window{
	
	
; 	Class Tmp{
; 		A:=1
; 		Static B:=1
; 	}
	
; 	Get()
; 	{
; 		WingetTitle TitleVar, A ; Get title from Active window.
; 		This.Title:=TitleVar ; Set TitleVar to This.Title
		
; 		WinGet IDVar,ID,A ; Get ID from Active window.
; 		This.ID:=IDVar ; Set IDVar to This.ID
; 	}
; 	Activate() ;Activates window with Title - This.Title
; 	{ 
; 		IfWinExist, % "ahk_id "This.ID
; 			WinActivate % "ahk_id " This.ID
; 		else
; 			MsgBox % "There is no Window with ID: "This.ID
; 	}  
; 	AnnounceWinProps() ;Create message box with title and ID
; 	{
; 		MsgBox % "Title is: " This.Title "`n ID is: " This.ID
; 	}
; }

; Class Notepad extends Window{
	
; 	__New()
; 	{	
; 		This.Run()
; 		This.get()
; 	}
	
; 	Run()
; 	{
; 		IfWinNotExist ahk_class Notepad
; 			Run Notepad
; 		Else 
; 			WinActivate
; 	}	
	
; }

; Class Calc extends Window{
	
; 	__New()
; 	{	
; 		This.Run()
; 		This.get()
; 	}
	
; 	Run()
; 	{
; 		IfWinNotExist ahk_class CalcFrame
; 			Run Calc
; 		Else 
; 			WinActivate
; 	}	
	
; }
; ;Create Instance
; SomeWin:= New Window
; SomeNot:= New Notepad
; SomeCalc:= New Calc
; return

; ^!a:: ;Hotkey to run Instance Method
; ;SomeNot.Run()
; ;SomeNot.get()
; ;SomeNot.AnnounceWinProps()
; Return

; ^!s::
; If SomeNot.ID
; 	SomeNot.Activate() 
; else
; 	MsgBox Instance SomeWindow has no ID setted, pleas run SomeWin.get() first!
; return

; ^!d::
; If SomeCalc.ID
; 	SomeCalc.Activate() 
; else
; 	MsgBox Instance SomeWindow has no ID setted, pleas run SomeWin.get() first!
; return