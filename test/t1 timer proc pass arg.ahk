
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

g_JoyA := { JoyX:true 
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
  
  local valueJoyA := GetKeyState(JoyA)  

  -- static t := {}
  -- t[JoyA] := AorB(t[JoyA], {})
  -- t[JoyA]["key"] := AorB(t[JoyA]["key"], "")
  -- t[JoyA]["prev"] := AorB(t[JoyA]["prev"], "")

  -- t[JoyA]["prev"] := t[JoyA]["key"]

  -- if (valueJoyA > JoyThresholdUpper)
  --   t[JoyA]["key"] := "a"
  -- else if (valueJoyA < JoyThresholdLower)
  --   t[JoyA]["key"] := "d"
  -- else  
  --   t[JoyA]["key"] := ""  

  -- local x
  -- if (t[JoyA]["key"] == t[JoyA]["prev"])  
  --   return  

  -- print("if", KeyToHoldDown, ",", KeyToHoldDownPrev)

  -- if (t[JoyA]["prev"]) {
  --   Send, {% t[JoyA]["prev"] up}  
  --   -- print(t[JoyA]["prev"], "up")
  -- }
  -- if (t[JoyA]["key"]) {
  --   Send, {% t[JoyA]["key"] down}  
  --   -- print(t[JoyA]["key"], "down")
  -- }
  print(444, JoyA, valueJoyA, arg*)
  return
}


func_name() {
  print(111, x, y, arg*)
  return 
}


setTimeout2(name, millisec, arg*) {
  fn := Func(name).Bind(arg*)
  SetTimer, % fn, % millisec
  return fn
}

-----------------------------------------------
-- run
-----------------------------------------------

tm := setTimeout("proc_WatchJoyA", 500, "JoyXX",2)

return




