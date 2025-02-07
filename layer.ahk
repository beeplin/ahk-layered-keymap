#Requires AutoHotkey v2.0

key2index := Map()
leader2layer := Map()

setKeyboard "
(
``    1     2     3     4     5     6     7     8     9     0     -     =       BS

Tab      q     w     e     r     t     y     u     i     o     p     [     ]     \

CapsLock  a     s     d     f     g     h     j     k     l     ;     '      Enter

LShift       z     x     c     v     b     n     m     ,     .     /        RShift

LCtrl LWin LAlt                    Space                        RAlt AppsKey RCtrl
)"

setKeyboard(str) {
    for index, key in convertLayer(str)
        key2index[key] := index
}

setLayer(leader, str) {
    leader2layer[leader] := convertLayer(str)
    for key in key2index {
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
    key := array[1]
    index := key2index[key]
    result := layer[index]
    postfix := array.Length = 1 ? "Down" : "Up"
    Send("{Blind}{" result " " postfix "}")
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
