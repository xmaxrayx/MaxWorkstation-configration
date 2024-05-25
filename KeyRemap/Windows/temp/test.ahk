#Requires AutoHotkey v2.0





Run('"sound.py" "C:\Users\Max_Laptop\Documents\Audacity\waiting for a window.wav"  "1"' , ,"Hide" ,&k)
Sleep(5000)



OnExit:
ProcessClose(k)
