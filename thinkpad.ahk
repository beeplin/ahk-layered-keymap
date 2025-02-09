#Requires AutoHotkey v2.0
#SingleInstance Force

thinkpad := false

#PrintScreen:: {
    thinkpad := true
}

#HotIf thinkpad
LCtrl::LWin
PrintScreen::RWin
#HotIf
