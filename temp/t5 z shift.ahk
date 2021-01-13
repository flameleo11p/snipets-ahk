

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

AorB(var, nextvar) {
  if (var) {
    return var
  }
  return nextvar
}

g_keyCount := {F1:0, F2:0}
m_wav1 := "C:\Users\E2160\Music\red_alert_2\z-on.wav"
m_wav2 := "C:\Users\E2160\Music\red_alert_2\z-off.wav"
m_wav3 := "C:\Users\E2160\Music\red_alert_2\g.wav"


playSoundEffect(wav) {
  SoundPlay, %wav%
}

sleep(milisec) {
  Sleep %milisec%
}



$z::
  state := GetKeyState("z", "p")
  state2 := GetKeyState("Shift", "p")
  if (state and !state2) {
    playSoundEffect(m_wav1)
    Send {c}
    Send {Shift down}
  }
  return

$+z up::
  -- state := GetKeyState("z", "p")
  -- if not (state) {
    playSoundEffect(m_wav2)
    Send {shift up}
    Send {RButton}
  -- }
  return
