#Requires AutoHotkey v2.0
#SingleInstance Force

#Include layer.ahk

setLayer "", "
(
^     +     -     =     _     ``    %     #     *     {     }     [     ]        $

Tab      p     v     u     z     w     q     ,     k     b     ;     (     )     \

LCtrl     i     a     s     t     g     f     h     e     l     o     '      RCtrl

LShift       x     d     c     r     y     n     m     j     .     /        RShift

LCtrl LWin LAlt                    Space                         RShift Rwin RCtrl
)"

setLayer "Space", "
(
F11   F12   F2    F3    F4    F5    F6    F7    F8    F9    F10   Volume_Down    Volume_Up   Volume_Mute

LAlt     F1    BS    Up    PgUp  Home  &     7     8     9     @  Media_Prev Media_Next Media_Play_Pause

LCtrl     Esc   Left  Enter Right Ins   !     1     2     3     0        AppsKey                   RCtrl

LShift    CapsLock Down  PgDn  Del   End   |     4     5     6     ~                              RShift

LCtrl LWin LAlt                    Space                                               RShift Rwin RCtrl
)"
