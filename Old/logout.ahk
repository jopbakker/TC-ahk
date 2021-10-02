; See https://github.com/J-P-Bakker/TC-ahk/blob/master/Screenshots/wine_telegrab.png

!1::Reload

!2::ExitApp

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 10
    Random, ySway, 0, 10

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

logout() {
    ; Open logout page
    square := createsquare(1215,800)
    MouseMove, square.x, square.y, 1
    click

    Random, rand, 250, 350 ; Set new random sleep
    Sleep, %rand%

    square := createsquare(1210,750)
    MouseMove, square.x, square.y, 1
    click
}

;#IfWinActive, ahk_exe RuneLite.exe
;Stand on marked tile, set north,face up and zoom so table is on edge of screen
space::
    logout()
