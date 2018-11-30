if application "Google Chrome" is running then
	tell application "Google Chrome"
		if (count of windows) is 0 or front window is not visible then
			make new window
		else
			make new tab at end of tabs of front window
			activate
		end if
		return
	end tell
else
	tell application "Google Chrome"
		activate
	end tell
end if