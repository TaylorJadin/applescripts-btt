set search_url to "https://meet.google.com/"

tell application "Google Chrome"
	activate
	repeat with w in windows
		set i to 1
		repeat with t in tabs of w
			if URL of t starts with search_url then
				set active tab index of w to i
				set index of w to 1
				tell application "System Events" to keystroke "d" using command down
				return
			end if
			set i to i + 1
		end repeat
	end repeat
end tell
