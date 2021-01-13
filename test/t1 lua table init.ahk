
#Include ../common/lua-like.ahk



test(JoyA) {
  static t := {}

  
  t[JoyA] := AorB(t[JoyA], {})
  t[JoyA][1] := 555

  if (JoyA == "JoyA") {
    t[JoyA][1] := "JoyA"
  }
  if (JoyA == "JoyB") {
    t[JoyA][1] := "JoyB"
  }
  
  
  print(t, t[JoyA], t[JoyA][1])
}



test("JoyA")
test("JoyB")
test("JoyA")
test("JoyB")
