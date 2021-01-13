

proc_WatchJoyX() {
  global JoyThresholdUpper, JoyThresholdLower
  local JoyX := GetKeyState("JoyX")  
  static KeyToHoldDown
  static KeyToHoldDownPrev

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
}


tm := setTimeout("proc_WatchJoyX", 500)

