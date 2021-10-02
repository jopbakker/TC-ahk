!1::Reload

!2::ExitApp

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 25
    Random, ySway, 0, 25

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

feed() {
    ; Select inv pos 1
    square := createsquare(1150,540)
    MouseMove, square.x, square.y, 4
    click

    Random, rand, 100, 250 ; Set new random sleep
    Sleep, %rand%

    ; Withdraw from marker 1
    square := createsquare(686,464)
    MouseMove, square.x, square.y, 6
    click
}

#IfWinActive, ahk_exe RuneLite.exe
    ; Line up marker 3 (Bank marker) with curtain
    1::
        feed()
