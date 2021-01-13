

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

  print(state)
  print(state2)

  if (state and !state2) {
    print("z1")
  print(state)
  print(state2)
  print("z1...")
    playSoundEffect(m_wav1)
    -- Send {c}
    -- sleep(300)
    Send {Shift down}
  }

$+z up::
g_keyCount[key] := AorB(g_keyCount[key], 0) + 1
g_keyCount[key] := Mod(g_keyCount[key], 2)


  state := GetKeyState("z", "p")
  print(state)
  if not (state) {

    print("z2")
  print(state)
  print("z2...")
    playSoundEffect(m_wav2)
    Send {shift up}
    

    -- Send {c}
  }
-- if (g_keyCount[key] == 1) {

-- } else {
--   print("z2")
--   playSoundEffect(m_wav2)
--   Send {shift up}
--   sleep(300)
--   Send {c}
-- }
