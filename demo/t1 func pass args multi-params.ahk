#Include ../common/lua-like.ahk

-----------------------------------------------
-- resource
-----------------------------------------------

test2(args*) {
  for i, v in args {
    print(i, v)
  }
}

print(123)



setTimeout() {
  
  return 
}

clearTimeout() {
  
  return 
}


timerProc(arg*) {
  print(arg*)
}


test2(1,2,3)
