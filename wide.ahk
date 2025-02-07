#Requires AutoHotkey v2.0
#SingleInstance Force
#Include layer.ahk

thinkpad := true
#HotIf thinkpad
RCtrl::RShift
#Include thinkpad.ahk
#HotIf

setLayer "", "
(
^     ``    -     =     +     Volume_Down     Volume_Mute     Volume_Up     AppsKey     *     {     [     ]        $

Tab      p     v     u     z     w                 Launch_Mail                 q     ,     k     b     ;     (     "

LCtrl     i     a     s     t     g                 Launch_Media                f     h     e     l     o          '

LShift       x     d     c     r     y                                       _     n     m     j     .             /

LCtrl LWin LAlt                                        Space                                       LAlt RShift RCtrl
)"

setLayer "Space", "
(
F11   F12   F2    F3    F4     Media_Prev  Media_Play_Pause  Media_Next  PrintScreen    F6    F7    F8    F9     F10

LAlt     F1    BS    Up    PgUp  Home               Launch_App1                &     7     8     9     F5    @     %

LCtrl     Esc   Left  Enter Right Ins                Launch_App2                  !     1     2     3     0        #

LShift    CapsLock Down  PgDn  Del   End                                     ~     |     4     5     6             \

LCtrl LWin LAlt                                        Space                                       LAlt RShift RCtrl
)"
