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

proc_click_ci(key) {
  global g_lockRepeat
  -- print("111", key, g_lockRepeat)
  if (g_lockRepeat) {
    pressKey(key)
  }
}
-----------------------------------------------
-- run
-----------------------------------------------

tm := setTimeout("proc_click_ci", 200, "k")
-----------------------------------------------
-- hotkey proc
-----------------------------------------------
$k::
g_lockRepeat := (not g_lockRepeat)
-- print(g_lockRepeat)

if (g_lockRepeat) {
  -- SoundPlay, %m_wav_z1%
  print("lock on")
} else {
  SoundPlay, %m_wav_z2%
  print("off")
}

return



