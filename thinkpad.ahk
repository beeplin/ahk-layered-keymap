#Requires AutoHotkey v2.0
#SingleInstance Force

isThinkpad := false

^!#PrintScreen:: {
    global isThinkpad
    isThinkpad := not isThinkpad
}

#HotIf isThinkpad
PrintScreen::RWin
#HotIf
