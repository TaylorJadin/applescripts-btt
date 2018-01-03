tell application "Google Chrome"
	if (count of windows) is 0 or front window is not visible then
		make new window
	else
		make new tab at end of tabs of front window
	end if
end tell