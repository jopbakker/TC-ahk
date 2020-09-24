; create time time: 49 sec

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

telegrap() {
    ; Select telegrap spell
    square := createsquare(1265,580)
    MouseMove, square.x, square.y, 4
    click

    Random, rand, 100, 250 ; Set new random sleep
    Sleep, %rand%

    ; Click wine
    square := createsquare(40,415)
    MouseMove, square.x, square.y, 12
    click

    Random, rand, 100, 250 ; Set new random sleep
    Sleep, %rand%

    square := createsquare(1265,580)
    MouseMove, square.x, square.y, 13
}

logout() {
    ; Open logout page
    square := createsquare(1215,800)
    MouseMove, square.x, square.y, 4
    click

    Random, rand, 250, 350 ; Set new random sleep
    Sleep, %rand%

    square := createsquare(1210,750)
    MouseMove, square.x, square.y, 4
    click
}

#IfWinActive, ahk_exe RuneLite.exe
    ;Stand on marked tile, set north,face up and zoom so table is on edge of screen
    1::
        While(1) {
            telegrap()
            Random, rand, 5000, 5350 ; Set new random sleep
            Sleep, %rand%
        }

    2::
        logout()
