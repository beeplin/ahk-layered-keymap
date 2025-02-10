#Requires AutoHotkey v2.0
#SingleInstance Force

; this keymap is optimized for english, pinyin, vim and vscode

#Include layer.ahk

setLayer "", "
(
%      ``    {     }     [     ]   Volume_Down  Volume_Up   <     >     -     =     + BackSpace

Tab       p     v     u     z     b      Volume_Mute     q     ,     k     o     ;     (      )

Escape/^   a     r     s     t     g      WheelRight      f     h     e     l     i       Enter

LShift        x     d     c     y     w                _     n     m     j     .              /

Home/^  LWin  LAlt                          Space                          RShift  RWin  End/>^
)"

setLayer "Space", "
(
^      F1    F2    F3    F4    F5   Media_Prev  Media_Next  F6    F7    F8    F9    F10       $

#         * BackSpace Up    PgUp  F11  Media_Play_Pause  &     7     8     9     :     "      \

CapsLock/^ LAlt  Left  Enter Right F12     WheelLeft      !     1     2     3     0           '

LShift       Delete Down  PgDn Insert ~                @     |     4     5     6              ?

PrintScreen/^  LWin  LAlt                   Space                      RShift  RWin  AppsKey/>^
)"
