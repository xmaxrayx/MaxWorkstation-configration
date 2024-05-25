import sys
from playsound import playsound
import os

#[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 11:29:14  on 16/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}


#######################


EnableLoop = 0


########################


print (os.getpid())


try:
    EnableLoop = bool(sys.argv[2])
except:
    EnableLoop = 0
    

try :
    loopTime = int(sys.agrv[3])
except:
    loopTime = 0


#################################
'''
musicpath(str) , enableLoop(1,0) , loopTime(int)

agrument
    1-            music path (str)
    2-(optional)  EnableLoop (1,0)
    3-(optional)  loopTime() (0 mean infinite, int (number count)

'''









#

try:
    music = sys.argv[1]
except:
    print("please provide a sound file as agrunment")
    exit()
    

if bool(EnableLoop):
    
    if loopTime == 0:
        i = 0
        while i ==0:
            playsound(music)
    else :
        i = int(loopTime)
        while i != 0 & i < 0:
            playsound (music)
            i = i - 1
else :
    playsound(music)







