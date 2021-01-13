
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

g_JoyA := { JoyX:{min:"a", max:"d"} 
  , JoyY:{min:"w", max:"s"} 
  , JoyU:{min:"a", max:"d"} 
  , JoyR:{min:"w", max:"s"} }

g_JoyA_Map := { JoyX:true 
  , JoyY:true
  , JoyU:true
  , JoyR:true }

-----------------------------------------------
-- func
-----------------------------------------------

proc_WatchJoyA(JoyA) {
  global
  -- JoyThresholdUpper, JoyThresholdLower 

  if (not g_JoyA[JoyA]) {
    return 
  }
  
  local infoJoyA := g_JoyA[JoyA]
  local valueJoyA := GetKeyState(JoyA)  
  print(JoyA, valueJoyA)

  static t := {}
  t[JoyA] := AorB(t[JoyA], {})
  t[JoyA]["key"] := AorB(t[JoyA]["key"], "")
  t[JoyA]["prev"] := AorB(t[JoyA]["prev"], "")

  -- set prev := key
  t[JoyA]["prev"] := t[JoyA]["key"]
  -- test JoyA value
  if (valueJoyA > JoyThresholdUpper)
    t[JoyA]["key"] := infoJoyA["max"]
  else if (valueJoyA < JoyThresholdLower)
    t[JoyA]["key"] := infoJoyA["min"]
  else  
    t[JoyA]["key"] := ""  
 
  local KeyToHoldDown := t[JoyA]["key"]
  local KeyToHoldDownPrev := t[JoyA]["prev"]


  if (KeyToHoldDown == KeyToHoldDownPrev) 
    return  

  print("if", KeyToHoldDown, KeyToHoldDownPrev)

  if (KeyToHoldDownPrev) {
    Send, {%KeyToHoldDownPrev% up}  
    print(KeyToHoldDownPrev, "up")
  }
  if (KeyToHoldDown) {
    Send, {%KeyToHoldDown% down}  
    print(KeyToHoldDown, "down")
  }
  return
}

-----------------------------------------------
-- run
-----------------------------------------------

tm := setTimeout("proc_WatchJoyA", JoyCheckDelay, "JoyU",2)
tm := setTimeout("proc_WatchJoyA", JoyCheckDelay, "JoyR",2)

return




