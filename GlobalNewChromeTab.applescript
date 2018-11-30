on is_running(appName)
	tell application "System Events" to (name of processes) contains appName
end is_running

set chrRunning to is_running("Chrome")
if chrRunning then
	tell application "Google Chrome"
		activate
		return
	end tell
end if

tell application "Google Chrome"
	if (count of windows) is 0 or front window is not visible then
		make new window
	else
		make new tab at end of tabs of front window
	end if
	return
end tell