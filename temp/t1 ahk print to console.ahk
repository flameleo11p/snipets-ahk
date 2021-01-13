

#CommentFlag --
#EscapeChar |
CoordMode, Mouse, Client

DllCall("AllocConsole")
__STDIN  := FileOpen("*", "r |n")
__STDOUT := FileOpen("*", "w |n")

pasue() {
	global __STDIN
	__STDIN.ReadLine()
}

print(str) {
	global __STDOUT
	__STDOUT.WriteLine(str)
	__STDOUT.Read(0)
}





print(123)

print(444)

pasue()

