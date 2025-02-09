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
    leader2layer[leader] := convertLayer(str)
    for key in physical2index {
        hKey := leader = "" ? "*" key : leader " & " key
        Hotkey hKey, sendLayeredKey
        Hotkey hKey " Up", sendLayeredKey
    }
}

sendLayeredKey(hKey) {
    array := StrSplit(hKey, " & ")
    leader := array.Length = 1 ? "" : array[1]
    layer := leader2layer[leader]
    keyWithUp := array.Length = 1 ? SubStr(array[1], 2) : array[2]
    array := StrSplit(keyWithUp, " ")
    physical := array[1]
    index := physical2index[physical]
    layered := parseCtrlTap(layer[index])
    direction := array.Length = 1 ? "Down" : "Up"
    if layered.side = ""
        Send("{Blind}{" layered.tap " " direction "}")
    else
        handleCtrlTap(physical, layered.tap, direction, layered.side)
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

handleCtrlTap(physical, mapped, direction, side) {
    Send "{" side "Control " direction "}"
    if direction = "Up" and A_PriorKey = physical {
        if (A_TimeSincePriorHotkey < 1000)
            Suspend "1"
        Send "{Blind}{" mapped "}"
        Suspend "0"
    }
}
