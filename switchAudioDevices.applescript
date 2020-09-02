set asrc to "FiiO USB DAC-E10"
set msrc to "OWC Thunderbolt 3 Audio Device"

tell application "System Preferences"
	reveal anchor "output" of pane id "com.apple.preference.sound"
	activate
	
	tell application "System Events"
		tell process "System Preferences"
			select (row 1 of table 1 of scroll area 1 of tab group 1 of window "Sound" whose value of text field 1 starts with asrc)
		end tell
	end tell
end tell


tell application "System Preferences"
	reveal anchor "input" of pane id "com.apple.preference.sound"
	activate
	tell application "System Events"
		tell process "System Preferences"
			select (row 1 of table 1 of scroll area 1 of tab group 1 of window "Sound" whose value of text field 1 starts with msrc)
		end tell
	end tell
	quit
end tell
