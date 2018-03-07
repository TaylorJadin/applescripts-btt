set search_url to "https://www.netflix.com/"
set open_url to "https://www.netflix.com/browse"

tell application "Google Chrome"
	activate
	repeat with w in windows
		set i to 1
		repeat with t in tabs of w
			if URL of t starts with search_url then
				set active tab index of w to i
				set index of w to 1
				return
			end if
			set i to i + 1
		end repeat
	end repeat
	open location open_url
end tell
