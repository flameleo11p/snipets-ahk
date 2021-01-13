

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

main() {


}

main()

-- DllCall("AllocConsole")
-- stdout := FileOpen("*", "w `n")
-- stdout.Write("Enter your query.`n\> ")
-- stdout.Read(0) ; Flush the write buffer.










