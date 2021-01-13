#Include %A_ScriptDir%/common/lua-like.ahk

-- cd /home/me/work/AutoHotkey/
-- proton /drive_d/app/AutoHotkey-v1/AutoHotkey.exe /home/me/work/AutoHotkey/repeat-key.ahk


-----------------------------------------------
-- config
-----------------------------------------------
m_wav_z1 := "/home/me/Music/effect/z-on.wav"
m_wav_z2 := "/home/me/Music/effect/z-off.wav"
m_wav_g1 := "/home/me/Music/effect/g.wav"
m_wav_g := "/home/me/Music/effect/g.wav"


g_lockRepeat := false

-----------------------------------------------
-- func
-----------------------------------------------

proc_click_ci(num) {
  global g_lockRepeat
  -- print("111", key, g_lockRepeat)
  if (g_lockRepeat) {
    pressKey(key)
  }

  if (item["type"] == "mouse") {
    for i, loc in item["locs"]
      clickMouseLoc(loc)
  } else if (item["type"] == "key") {
    pressKey(item["key"])
  }

}



proc_copy_new_terrain() {
  Send, ^c
  Sleep 200
  Send, ^v
  Sleep 500
  send, {enter}
  Sleep 1500
  clickMouseLoc([40, 138])
  Sleep 1000
  Send {Down} 
  Sleep 500
  send, {enter}
  Sleep 500
  send, {enter}
  Sleep 500

  SoundPlay, %m_wav_z1%

}


repeat() {
  i := 0
  while (i < 200)
  {
    proc_copy_new_terrain()
    i := i + 1
  }  
}

-----------------------------------------------
-- run
-----------------------------------------------

-- tm := setTimeout("proc_click_ci", 200, "k")
-- ; Exit script with Escape key
^!x::ExitApp  
-- ; Pause script with Ctrl+Alt+P
^!p::Pause    
-- ; Suspend script with Ctrl+Alt+S
^!s::Suspend  
-- ; Reload script with Ctrl+Alt+R
^!r::Reload   

-----------------------------------------------
-- hotkey proc
-----------------------------------------------
$k::
repeat()
return



$j::
return

