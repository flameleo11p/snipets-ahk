
#Include ../common/lua-like.ahk

#Persistent  
SetKeyDelay -1  


-----------------------------------------------
-- resource
-----------------------------------------------
-- Keep this script running until the user explicitl
-- https://www.autohotkey.com/docs/misc/RemapJoystick.htm


-----------------------------------------------
-- config
-----------------------------------------------



JoyThreshold := 3       -- 轴死区
JoyThresholdUpper := 50 + JoyThreshold
JoyThresholdLower := 50 - JoyThreshold

-----------------------------------------------
-- run
-----------------------------------------------

SetTimer, WatchJoyX, 1000
SetTimer, WatchJoyY, 1000

return


-----------------------------------------------
-- callback
-----------------------------------------------

WatchJoyX:
JoyX := GetKeyState("JoyX")  
KeyToHoldDownPrev := KeyToHoldDown  

print(JoyX)

if (JoyX > JoyThresholdUpper)
    KeyToHoldDown := "a"
else if (JoyX < JoyThresholdLower)
    KeyToHoldDown := "d"

if (KeyToHoldDown == KeyToHoldDownPrev)  
    return  

if KeyToHoldDownPrev   
    Send, {%KeyToHoldDownPrev% up}  
    print(KeyToHoldDownPrev, "up")
if KeyToHoldDown   
    Send, {%KeyToHoldDown% down}  
    print(KeyToHoldDown, "down")
return


WatchJoyY:
JoyY := GetKeyState("JoyY")  
KeyToHoldDownPrev := KeyToHoldDown 

print(JoyY)

if (JoyY > JoyThresholdUpper)
    KeyToHoldDown := "s"
else if (JoyY < JoyThresholdLower)
    KeyToHoldDown := "w"

if (KeyToHoldDown == KeyToHoldDownPrev) 
    return  

if KeyToHoldDownPrev   
    Send, {%KeyToHoldDownPrev% up}  
    print(KeyToHoldDownPrev, "up")
if KeyToHoldDown   
    Send, {%KeyToHoldDown% down}  
    print(KeyToHoldDown, "down")
return
