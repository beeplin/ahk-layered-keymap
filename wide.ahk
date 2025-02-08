#Requires AutoHotkey v2.0
#SingleInstance Force
#Include layer.ahk
#Include thinkpad.ahk


setLayer "", "
(
^     ``    -     =     +   Volume_Down  Volume_Mute  Volume_Up  AppsKey    <     >     {     [        $

Tab      p     v     u     z     w               #                 q     ,     k     b     (     :     ;

LCtrl     i     a     s     t     g               *                 f     h     e     l     o          '

LShift       x     d     c     r     y                           _     n     m     j     .             /

LCtrl LWin LAlt                                 Space                                  RShift RWin RCtrl
)"

setLayer "Space", "

F11   F12   F2    F3    F4  Media_Prev  Media_Play_Pause  Media_Next  F5    F6    F7    F8    F9     F10

LAlt     F1    BS    Up    PgUp  Home             Ins              &     7     8     9     @     %     \

LCtrl     Esc   Left  Enter Right Ins            CapsLock             !     1     2     3     0        ＂

LShift    CapsLock Down  PgDn  Del   End                         ~     |     4     5     6             ?

LCtrl LWin LAlt                                 Space                                  RShift RWin RCtrl
)"
