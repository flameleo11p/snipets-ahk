#EscapeChar |


m_button_x := 161
m_button_y := 448


m_exe1 := "Calculator"
;m_exe1 := "ahk_exe D:\game\Stellaris\stellaris.exe"



$Space::
;WinActivate, %m_exe1%

if !WinActive(m_exe1) {
	WinActivate, %m_exe1%
}

;只能模拟移动鼠标回来
;MouseGetPos mouseX, mouseY
;MouseMove mouseX, mouseY

;因为一下点击都移动了鼠标
;MouseClick, left, m_button_x, m_button_y
;Click, %m_button_x%, %m_button_y%
;SendEvent {Click, 161, 448}


MouseGetPos mouseX, mouseY
MouseClick, left, m_button_x, m_button_y
MouseMove mouseX, mouseY

Return