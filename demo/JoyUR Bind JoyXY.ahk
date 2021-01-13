
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
JoyCheckDelay := 5
JoyThreshold := 3       -- 轴死区
JoyThresholdUpper := 50 + JoyThreshold
JoyThresholdLower := 50 - JoyThreshold

-----------------------------------------------
-- func
-----------------------------------------------

-- not working
proc_WatchJoyA(JoyA, bindJoyStick) {
  global JoyX
  JoyX := GetKeyState(JoyA)  
  print(JoyX)
}

-----------------------------------------------
-- run
-----------------------------------------------

tm := setTimeout("proc_WatchJoyA", JoyCheckDelay, "JoyU", JoyX)

return




