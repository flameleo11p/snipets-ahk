;WinActivate, ahk_exe D:\game\Stellaris\stellaris.exe

#EscapeChar |

m_dir1 := "D:\game\Stellaris\"
m_dir2 := "D:\game\Stellaris2\"

m_exeActive := "stellaris.exe"
m_exeEntry := "stellaris-LAN.exe"

m_exe1 := "ahk_exe " . m_dir1 . m_exeActive
m_exe2 := "ahk_exe " . m_dir2 . m_exeActive
m_entry1 := m_dir1 . m_exeEntry
m_entry2 := m_dir2 . m_exeEntry


if !WinExist(m_exe1) {
    Run, %m_entry1%
}
if !WinExist(m_exe2) {
    Run, %m_entry2%
}

`::
MsgBox, ` Pressed

m_wav1 := "C:\Windows\media\ding.wav"


SoundPlay, %m_wav1%


if WinActive(m_exe1) {
	SoundPlay *-1
	MsgBox, ` 222
	WinActivate, %m_exe2%
} else {
	SoundPlay *-32
	MsgBox, ` 111
	WinActivate, %m_exe1%
}






