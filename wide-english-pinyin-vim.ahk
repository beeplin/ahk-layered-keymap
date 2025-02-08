#Requires AutoHotkey v2.0
#SingleInstance Force
#Include layer.ahk
#Include thinkpad.ahk

+]::)
+0::}
*+-:: Send "{Shift Up}{Shift Down}{Shift Up}]"

setLayer "", "
(
^     ``    <     =     >   Volume_Down  Volume_Mute  Volume_Up  AppsKey    -     {     [     +        $

Tab      p     v     u     z     b            WheelLeft            q     ,     k     o     ;     (     *

LCtrl     a     r     s     t     g            WheelRight           f     h     e     l     i          '

LShift       x     d     c     y     w                           _     n     m     j     .             /

LCtrl  LWin  LAlt                                Space                               RShift  RWin  RCtrl
)"

setLayer "Space", "
(
F11   F12   F2    F3    F4  Media_Prev  Media_Play_Pause  Media_Next  F5    F6    F7    F8    F9     F10

LAlt     Ins   BS    Up    PgUp  @               Home              &     7     8     9     :     %     #

LCtrl     Esc   Left  Enter Right CapsLock        End               !     1     2     3     0          "

LShift       F1    Down  PgDn  Del   \                           ~     |     4     5     6             ?

LCtr l LWin  LAlt                                Space                               RShift  RWin  RCtrl
)"
