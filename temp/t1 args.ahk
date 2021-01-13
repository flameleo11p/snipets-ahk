#Include ../common/lua-like.ahk

func_name(args*) {
  global
  local x := 123
  print(x)
  func_name2(args*)
}

func_name2(args*) {
  global

  print(args[1], args[2])
}


func_name(111,222)
