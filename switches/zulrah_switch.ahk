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
    click(1389,542)
    click(1389,576)
    click(1431,542)
    click(1431,576)

    Random, rand, 250, 450 ; Set new random sleep
    Sleep, %rand%
    Send, {F1}
}

GroupAdd, activewindow, ahk_exe OpenOSRS.exe
;#IfWinActive, ahk_group activewindow
F14::
    while(1){
        KeyWait, F13, D
        weaponswitch()
    }