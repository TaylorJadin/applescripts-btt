set asrc to "Bragi HP 16"

activate application "SystemUIServer"
tell application "System Events"
	tell process "SystemUIServer"
		set btMenu to (menu bar item 1 of menu bar 1 whose description contains "bluetooth")
		tell btMenu
			click
			tell (menu item asrc of menu 1)
				click
				if exists menu item "Connect" of menu 1 then
					click menu item "Connect" of menu 1
					return "Connecting..."
				else
					click btMenu -- Close main BT drop down if Connect wasn't present
					return "Connect menu was not found, are you already connected?"
				end if
			end tell
		end tell
	end tell
end tell

tell application "System Preferences"
	reveal anchor "output" of pane id "com.apple.preference.sound"
	activate
	
	tell application "System Events"
		tell process "System Preferences"
			select (row 1 of table 1 of scroll area 1 of tab group 1 of window "Sound" whose value of text field 1 is asrc)
		end tell
	end tell
	quit
end tell
display notification "Output Device: " & asrc