#Requires AutoHotkey v2.0
#SingleInstance Force

physical2index := Map()
leader2layer := Map()

setKeyboard "
(
``    1     2     3     4     5     6     7     8     9     0     -     =       BS

Tab      q     w     e     r     t     y     u     i     o     p     [     ]     \

CapsLock  a     s     d     f     g     h     j     k     l     ;     '      Enter

LShift       z     x     c     v     b     n     m     ,     .     /        RShift

LControl LWin LAlt                 Space                     RAlt AppsKey RControl
)"

setKeyboard(str) {
    for index, key in convertLayer(str)
        physical2index[key] := index
}

setLayer(leader, str) {
    layer := convertLayer(str)
    leader2layer[leader] := layer
    for physical, index in physical2index {
        hKey := leader = "" ? "*" physical : leader " & " physical
        layered := parseCtrlTap(layer[index])
        Hotkey hKey, sendLayered(physical, "Down", layered)
        Hotkey hKey " Up", sendLayered(physical, "Up", layered)
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
    return { side: isCtrlTap ? SubStr(array[2], 1, 1) = ">" ? "R" : "L" : "", tap: array[1] }

}

sendLayered(physical, direction, layered) {
    return hk => layered.side = "" ?
        Send("{Blind}{" layered.tap " " direction "}") :
            handleCtrlTap(physical, layered.tap, direction, layered.side)
}

handleCtrlTap(physical, mapped, direction, side) {
    Send "{" side "Control " direction "}"
    if direction = "Up" and A_PriorKey = physical {
        if (A_TimeSincePriorHotkey < 1000)
            Suspend "1"
        Send "{Blind}{" mapped "}"
        Suspend "0"
    }
}
