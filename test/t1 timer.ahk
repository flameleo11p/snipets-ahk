
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

SetTimer, WatchJoyY, 1000
SetTimer, Alert1, Off


setTimeout(myFunc, 1500, 'funky');
SetTimer(key, fromUser, funcname, args*) {
  global
  local fn
  fn := Func("proc_keyPanel").Bind(args*)

  if (fromUser) {
    Hotkey $%key%, % fn
  } else {
    Hotkey %key%, % fn
  }
}
clearTimeout(timeoutObj);


function myFunc(arg) {
  console.log(`arg was :=> ${arg}`);
}

setTimeout(myFunc, 1500, 'funky');