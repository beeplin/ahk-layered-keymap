#Requires AutoHotkey v2.0
#SingleInstance Force

#Include thinkpad.ahk

physicalKeyboard := convertLayer("
(
``    1     2     3     4     5     6     7     8     9     0     -     =  BackSpace

Tab      q     w     e     r     t     y     u     i     o     p     [     ]       \

CapsLock  a     s     d     f     g     h     j     k     l     ;     '        Enter

LShift       z     x     c     v     b     n     m     ,     .     /          RShift

LControl LWin LAlt                  Space                      RAlt AppsKey RControl
)"
)

setLayer(leader, str) {
    layer := convertLayer(str)
    for index, physical in physicalKeyboard {
        hot := leader = "" ? "*" physical : leader " & " physical
        layered := parseCtrlTap(layer[index])
        Hotkey hot, sendLayered(physical, "Down", layered)
        Hotkey hot " Up", sendLayered(physical, "Up", layered)
    }
}

convertLayer(str) {
    str := StrReplace(str, "`n", " ")
    loop {
        str := StrReplace(str, "  ", " ", , &count)
        if count = 0
            break
    }
    return StrSplit(str, " ")
}

parseCtrlTap(str) {
    array := StrSplit(str, "/")
    isCtrlTap := array.Length = 2 and SubStr(str, -1, 1) = "^"
    return {
        ctrl: isCtrlTap ? array[2] = ">^" ? "RControl" : "LControl" : "",
        tap: isCtrlTap ? array[1] : str
    }
}

sendLayered(physical, direction, layered) {
    return hot => layered.ctrl = "" ?
        Send("{Blind}{" layered.tap " " direction "}") :
            handleCtrlTap(physical, direction, layered.ctrl, layered.tap)
}

handleCtrlTap(physical, direction, ctrl, tap) {
    Send "{" ctrl " " direction "}"
    if direction = "Up" and A_PriorKey = physical {
        if (A_TimeSincePriorHotkey < 1000)
            Suspend "1"
        Send "{Blind}{" tap "}"
        Suspend "0"
    }
}
