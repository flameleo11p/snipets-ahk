#Include ../common/lua-like.ahk


#Persistent  
SetKeyDelay -1  

-----------------------------------------------
-- resource
-----------------------------------------------


print(123)


-- setTimeout(name, millisec, arg*) {
--   fn := Func(name).Bind(arg*)
--   SetTimer, % fn, % millisec
--   return fn
-- }

-- clearTimeout(fn) {
--   SetTimer, % fn, Off
-- }


timerProc(arg*) {
  print(arg*)
}


tm := setTimeout("timerProc", 700, 1,2,3)

timerProc2(arg*) {
  global tm
  clearTimeout(tm)
}

tm2 := setTimeout("timerProc2", 2000, 1,2,3)



