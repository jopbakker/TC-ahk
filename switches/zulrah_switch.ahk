!1::Reload

!2::ExitApp

#UseHook, On

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 20
    Random, ySway, 0, 20

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

click(xpos, ypos) {
    square := createsquare(xpos,ypos)
    MouseMove, square.x, square.y, 2
    click
}

weaponswitch() {
    Send, {Esc}
    click(1214,634)
    click(1214,671)
    click(1259,634)
    click(1259,671)
    click(1299,634)

    Random, rand, 250, 450 ; Set new random sleep
    Sleep, %rand%
    Send, {F1}
}

GroupAdd, activewindow, ahk_exe OpenOSRS.exe
;#IfWinActive, ahk_group activewindow
1::
    while(1){
        KeyWait, Space, D
        weaponswitch()
    }