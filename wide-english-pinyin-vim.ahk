#Requires AutoHotkey v2.0
#SingleInstance Force

#Include layer.ahk
#Include thinkpad.ahk

setLayer "", "
(
~     <     -     =     >     %   Volume_Down  Volume_Up   +     [     ]     {     }        BS

Tab       p     v     u     z     b      Volume_Mute     q     ,     k     o     ;     (     )

Esc/^      a     r     s     t     g         Home         f     h     e     l     i      Enter

LShift        x     d     c     y     w                _     n     m     j     .             /

WheelLeft/^  LWin  LAlt                    Space                   RShift  RWin  WheelRight/>^
)"

setLayer "Space", "
(
^      F1    F2    F3    F4    F5   Media_Prev  Media_Next  F6    F7    F8    F9    F10      $

#         *     BS    Up    PgUp  F11  Media_Play_Pause  &     7     8     9     :     "     \

CapsLock/^ LAlt  Left  Enter Right F12        End         !     1     2     3     0          '

LShift        Del   Down  PgDn  Ins   ``               @     |     4     5     6             ?

PrintScreen/^  LWin  LAlt                Space                       RShift  RWin  AppsKey/>^
)"
