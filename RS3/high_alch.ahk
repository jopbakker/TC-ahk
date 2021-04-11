!1::Reload

!2::ExitApp

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 20
    Random, ySway, 0, 20

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

1::
    while(1) {
        Send, 0 ; Send high alch hotkey key

        square := createsquare(1089,775) ; Click invent slot 1
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 2690, 2875 ; Sleep time till reheat
        Sleep, %rand%
    }