-- config
#CommentFlag --
#EscapeChar |


-- set entry file (ahk.exe file) work dir
SetWorkingDir %A_ScriptDir%

-- StringCaseSense On
CoordMode, Mouse, Client

_NEWLINE := "|n"
_TAB := "|t"
_INDENT := "  "

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

print(args*) {
  global __STDOUT, _INDENT
  for i, v in args {
    __STDOUT.Write(v)
    __STDOUT.Write(_INDENT)
  }
  __STDOUT.WriteLine()
  __STDOUT.Read(0)
}
-----------------------------------------------
-- lua basic libs
-----------------------------------------------


str_upper(str) {
  StringUpper, str, str
  return str
}

str_lower(str) {
  StringLower, str, str
  return str
}


-----------------------------------------------
-- console & print
-----------------------------------------------

playSoundEffect(wav) {
  SoundPlay, %wav%
}

pressKey(key, byCapsLock:=false) {
  global
  key := str_lower(key)
  if (byCapsLock) {
    local state := GetKeyState("CapsLock", "T")
    if (state) {
      key := str_upper(key)
    }
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

MouseClickLoc(loc) {
  MouseClick, left, loc[1], loc[2]
}

MouseRightClickLoc(loc) {
  MouseClick, right, loc[1], loc[2]
}

MouseMoveLoc(loc, offset) {
  Sleep 30
  MouseMove loc[1], loc[2]
  Sleep 30  
  MouseMove loc[1]+offset[1], loc[2]+offset[2]
  Sleep 30
  MouseMove loc[1], loc[2]
  Sleep 30
  MouseMove loc[1]-offset[1], loc[2]-offset[2]
  Sleep 30
  MouseMove loc[1], loc[2]
  Sleep 30  
}

regHotkeyProc(key, fromUser, funcname, args*) {
  global
  local fn
  fn := Func("proc_keyPanel").Bind(args*)

  if (fromUser) {
    Hotkey $%key%, % fn
  } else {
    Hotkey %key%, % fn
  }
}

setTimeout(name, millisec, arg*) {
  fn := Func(name).Bind(arg*)
  SetTimer, % fn, % millisec
  return fn
}

clearTimeout(fn) {
  SetTimer, % fn, Off
}

run(exe, keepSingle:=false) {
  if not (keepSingle and WinExist(exe)) {
    Run, %exe%
  }
}

-- print(A_ScriptDir)

