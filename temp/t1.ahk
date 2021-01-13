

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
	print(Round(3.54))

}

main()


#i::
print(111)

Joy1::print("Joy1")
Joy2::print("Joy2")
Joy3::print("Joy3")
Joy4::print("Joy4")
Joy5::print("Joy5")
Joy6::print("Joy6")
Joy7::print("Joy7")
Joy8::print("Joy8")




-- DllCall("AllocConsole")
-- stdout := FileOpen("*", "w `n")
-- stdout.Write("Enter your query.`n\> ")
-- stdout.Read(0) ; Flush the write buffer.


