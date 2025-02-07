#Requires AutoHotkey v2.0

thinkpad := false

#PrintScreen:: {
thinkpad := true
}

#HotIf thinkpad
LCtrl::LWin
PrintScreen::RWin
#HotIf

