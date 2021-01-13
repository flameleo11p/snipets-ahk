-- config
#CommentFlag --
#EscapeChar |

-- Keep this script running until the user explicitly exits it.
#Persistent  

CoordMode, Mouse, Client

_NEWLINE := "|n"
_TAB := "|t"

-----------------------------------------------
-- console & print
-----------------------------------------------

-- DllCall("AllocConsole")
__STDIN  := FileOpen("*", "r |n")
__STDOUT := FileOpen("*", "w |n")

pasue() {
  global __STDIN
  __STDIN.ReadLine()
}

print(str) {
  global __STDOUT
  __STDOUT.WriteLine(str)
  __STDOUT.Read(0)
  -- pasue()
}

print2(args*) {
  global __STDOUT, _TAB
  for i, v in args {
    __STDOUT.Write(v)
    __STDOUT.Write(_TAB)

  }
  __STDOUT.WriteLine()
  __STDOUT.Read(0)
}

print2(1,2)

-----------------------------------------------
-- console & print
-----------------------------------------------

playSoundEffect(wav) {
  SoundPlay, %wav%
}

pressKey(key) {
  state := GetKeyState("CapsLock", "T")
  if (state) {
    StringUpper, key, key
  } else {
    StringLower, key, key
  }
  print(state)
  print(key)

  Send, {%key% down}
  Sleep 10
  Send, {%key% up}
}

sleep(milisec) {
  Sleep %milisec%
}

AorB(var, nextvar) {
  if (var) {
    return var
  }
  return nextvar
}


clickMouse(x, y) {
  MouseGetPos t_mouseX, t_mouseY
  MouseClick, left, x, y
  MouseMove t_mouseX, t_mouseY
  sleep(500)
}

clickMouseLoc(loc) {
  MouseGetPos t_mouseX, t_mouseY
  MouseClick, left, loc[1], loc[2]
  MouseMove t_mouseX, t_mouseY
}

reg_hotKey(key, funcname, args*) {
  global
  local fn
  fn := Func("proc_keyPanel").Bind(args*)
  
  Hotkey $%key%, % fn
}

