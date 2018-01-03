set tab_url to "https://www.netflix.com/"
set return_text to "Now Playing"

if application "Google Chrome" is running then
	tell application "Google Chrome"
		repeat with w in windows
			set i to 1
			repeat with t in tabs of w
				if URL of t starts with tab_url then
					return return_text
				end if
				set i to i + 1
			end repeat
		end repeat
		return ""
	end tell
else
	return ""
end if
