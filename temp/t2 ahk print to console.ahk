

#CommentFlag --
#EscapeChar |
CoordMode, Mouse, Client


DllCall("AllocConsole")



-- ; Open the application's stdin/stdout streams in newline-translated mode.
stdin  := FileOpen("*", "r |n")
stdout := FileOpen("*", "w |n")
-- For older versions:
--   stdin  := FileOpen(DllCall("GetStdHandle", "int", -10, "ptr"), "h `n")
--   stdout := FileOpen(DllCall("GetStdHandle", "int", -11, "ptr"), "h `n")
stdout.Write("Enter your query.|n\> ")
stdout.Read(0) -- Flush the write buffer.
query := RTrim(stdin.ReadLine(), "|n")
stdout.WriteLine("Your query was '" query "'. Have a nice day.")
stdout.Read(0) -- Flush the write buffer.
Sleep 5000