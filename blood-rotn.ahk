#Include ./common/lua-like.ahk

-----------------------------------------------
-- resource
-----------------------------------------------

-- m_wav1 := "D:\E2160\Music\find\Windows Error.wav"
m_wav2 := "/usr/share/sounds/sound-icons/piano-3.wav"


-- /home/me/tmp/111/test.wav


-- m_dir1 := "D:\game\Stellaris\"
-- m_dir2 := "D:\game\Stellaris2\"

-- m_exeActive := "stellaris.exe"
-- m_exeEntry := "stellaris-LAN.exe"

-- m_exeAll := "ahk_exe " . m_exeActive
-- m_exe1 := "ahk_exe " . m_dir1 . m_exeActive
-- m_exe2 := "ahk_exe " . m_dir2 . m_exeActive

-- m_entry1 := m_dir1 . m_exeEntry
-- m_entry2 := m_dir2 . m_exeEntry

-----------------------------------------------
-- config
-----------------------------------------------


-----------------------------------------------
-- func
-----------------------------------------------

-----------------------------------------------
-- run
-----------------------------------------------

-----------------------------------------------
-- hotkey proc
-----------------------------------------------


$TAB::
SoundPlay, %m_wav2%

return


-- $Tab::
-- if WinActive(m_exeAll) {
--   pressKey(g_keyPanel[1].key)
-- } else {
--   Send, {Tab}
-- }
-- return

