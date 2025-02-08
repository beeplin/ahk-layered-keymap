#Requires AutoHotkey v2.0
#SingleInstance Force
#Include layer.ahk
#Include thinkpad.ahk

+]::)
+-::}
+=::]

setLayer "", "
(
^     ``    -     =     +   Volume_Down  Volume_Mute  Volume_Up  AppsKey    <     >     {     [        $

Tab      p     v     u     z     w               Home              q     ,     k     b     ;     (     *

LCtrl     a     o     s     t     g               End               f     h     e     l     i          '

LShift       x     d     c     r     y                           _     n     m     j     .             /

LCtrl LWin LAlt                                  Space                                 RShift RWin RCtrl
)"

setLayer "Space", "
(
F11   F12   F2    F3    F4  Media_Prev  Media_Play_Pause  Media_Next  F5    F6    F7    F8    F9     F10

LAlt     Ins   BS    Up    PgUp  @                ?                &     7     8     9     :     %     #

LCtrl     Esc   Left  Enter Right CapsLock          ?               !     1     2     3     0          "

LShift       F1    Down  PgDn  Del   \                           ~     |     4     5     6             ?

LCtrl LWin LAlt                                  Space                                 RShift RWin RCtrl
)"
