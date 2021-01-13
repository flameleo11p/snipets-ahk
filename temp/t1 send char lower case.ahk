

#CommentFlag --
#EscapeChar |

CoordMode, Mouse, Client

msgbox(msg) {
  -- MsgBox, %msg%
}

print(msg) {
  if !__STDOUT {
    __STDOUT := FileOpen("*", "w |n")
  }

  __STDOUT.Write(msg . "|n")
  __STDOUT.Read(0)
}


proc_keyPanel(key) {
  print(key)
  state := GetKeyState("CapsLock", "T")
  if (state) {
    StringUpper, key, key
  } else {
    StringLower, key, key
  }
  print(state)
  print(key)

  Send, {%key% down}
  Sleep 30
  Send, {%key% up}
}

key := "x"
fn := Func("proc_keyPanel").Bind(key)
Hotkey $%key%, % fn



$F1:
  Send, {F3}
return


$F3::
  Send, {F1}
return


$A::
  Send, {A}
return


