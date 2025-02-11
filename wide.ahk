#Requires AutoHotkey v2.0
#SingleInstance Force

; this keymap is optimized for english, pinyin, vim and vscode

#Include layer.ahk

setLayer "", "
(
%      ``    <     >     {     }   Volume_Down  Volume_Up   +     -     =     [     ]         \

Tab       y     z     u     r     p      Volume_Mute     b     f     k     w     ;     (      )

Escape/^   a     i     s     t     g      WheelRight      m     h     e     l     o           '

LShift        x     c     d     v     q                _     n     j     ,     .              /

Left/^         LWin  LAlt                  Space                       RShift  RWin    Right/>^
)"

setLayer "Space", "
(
#      F1    F2    F3    F4    F7   Media_Prev  Media_Next  F5    F6    F9    F10   F11       ^

*       AppsKey BS    Up    PgUp  F8   Media_Play_Pause  &     7     8     9     :     @      $

CapsLock/^ LAlt  Left  Enter Right F12    WheelLeft       !     1     2     3     0           "

LShift        Home  PgDn  Down  Del   End              ~     |     4     5     6              ?

PrintScreen/^  LWin  LAlt                  Space                       RShift  RWin      Ins/>^
)"
