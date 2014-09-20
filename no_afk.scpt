set the_count to 0

# quit function; displays a dialog and times out if it's not told to quit; uses cancle to cancel out of the repeat loop and quit the program
on main(y, the_count)
	tell me to activate
	display dialog "click cancel to quit.
jumped: " & the_count & " times" buttons {"Cancel"} default button 1 giving up after y
end main

on jump(x, the_count)
	activate_wow()
	repeat x times
		tell application "System Events" to key code 49
		delay 1
		set the_count to the_count + 1
	end repeat
	return the_count
	#hide_wow()
end jump

on activate_wow()
	tell application "World of Warcraft-64.app" to activate
end activate_wow

on hide_wow()
	tell application "System Events" to set visible of process "World of Warcraft-64" to false
end hide_wow

# function for main window timeout, or, time until it continues the script
on mtime()
	(random number from 60 to 900)
end mtime

# function for how many times to jump 
on jtime()
	(random number from 1 to 10)
end jtime



activate_wow()
repeat
	main(mtime(), the_count) # runs main function giving the timeout variable 3 seconds
	set the_count to jump(jtime(), the_count) # runs the jump function setting the jump variable to 3
	main(mtime(), the_count) # change the (NUMBER) to change the jumps or timeouts
	set the_count to jump(jtime(), the_count)
	main(mtime(), the_count)
	set the_count to jump(jtime(), the_count)
end repeat

# add multiple dialogs to say every minute how long it will be