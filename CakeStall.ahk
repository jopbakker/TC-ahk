^1::Reload

^2::ExitApp

searchSquare(xpos, ypos, xpos_end, ypos_end, itemColor) {
    PixelSearch, OutputVarX, OutputVarY, xpos, ypos, xpos_end, ypos_end, itemColor, 20, Fast
    if ErrorLevel
        MsgBox, "BOOOO!!!!"
    else
        MsgBox, "YES!!!!!"
}

createSquare() {
    MouseGetPos, xpos, ypos
    itemColor := 0xD2DDCD
    xpos_end := xpos + 18
    ypos_end := ypos + 18
    searchSquare(xpos, ypos, xpos_end, ypos_end, itemColor)
}

; #IfWinActive, ahk_exe RuneLite.exe
1::
    while (1) {
        Random, rand, 200, 700 ; Set new random sleep
        Click ; Click left mouse
        Sleep, %rand% ; Sleep for random time %rand% 
    }
Return

2::
    createSquare()
Return
