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

weaponswitch(number) {
    Send, {Esc}
    if (number = 1){
        click(1214,634)
        click(1214,671)
        click(1259,634)
    } else {
        click(1214,634)
        click(1214,671)
    }
    Random, rand, 250, 450 ; Set new random sleep
    Sleep, %rand%
    Send, {F1}
}

GroupAdd, activewindow, ahk_exe RuneLite.exe
GroupAdd, activewindow, ahk_exe OpenOSRS.exe
#IfWinActive, ahk_group activewindow
    1:: ; Start with melee
        while(1){
            KeyWait, Space, D
            weaponswitch(2)
            KeyWait, Space, D
            weaponswitch(1)
        }