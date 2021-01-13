#Include ./common/lua-like.ahk

m_wav1 := "/home/me/Music/effect/Windows Error.wav"
m_wav2 := "/home/me/Music/effect/Windows Exclamation.wav"

m_wav_z1 := "/home/me/Music/effect/z-on.wav"
m_wav_z2 := "/home/me/Music/effect/z-off.wav"
m_wav_g1 := "/home/me/Music/effect/g.wav"
m_wav_g := "/home/me/Music/effect/g.wav"

-- m_wav1 := "D:\E2160\Music\find\Windows Error.wav"
m_wav233 := "/usr/share/sounds/sound-icons/piano-3.wav"


m_dir1 := "/drive_d/game/Stellaris/"
m_dir2 := "/drive_d/game/Stellaris2/"

m_exeActive := "stellaris.exe"
m_exeEntry := "stellaris-LAN.exe"

-- ahk_exe stellaris.exe

m_exeAll := "ahk_exe " . m_exeActive
m_exe1 := "ahk_exe " . m_exeActive
m_exe2 := "ahk_exe " . m_exeActive

m_entry1 := m_dir1 . m_exeEntry
m_entry2 := m_exeEntry

-----------------------------------------------
-- resource
-----------------------------------------------

$TAB::
-- SoundPlay, %m_wav233%
-- playSoundEffect(m_wav233)
-- playSoundEffect(m_wav_z1)

-- ok  111  ahk_exe stellaris.exe 
-- if WinExist(m_exe2) {
--   playSoundEffect(m_wav_z1)
--   print(111, m_exe2)
-- } else {
--   playSoundEffect(m_wav1)
--   print(222, m_exe2)
-- }

if WinActive(m_exe1) {
  SoundPlay, %m_wav2%
  WinActivate, %m_exe2%
  print(111, m_exe1)
} else {
  SoundPlay, %m_wav1%
  WinActivate, %m_exe1%
  print(222, m_exe2)
}
return


  

$z::    

playSoundEffect(m_wav_z1)
state := GetKeyState("z", "p")
state2 := GetKeyState("Shift", "p")
if (state and !state2) {
  playSoundEffect(m_wav_z1)
  Send {c}
  Send {Shift down}
}
return

$+z up::
playSoundEffect(m_wav_z2)
Send {shift up}
Send {RButton}
return

