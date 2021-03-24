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

1:: ; Glass making. Reset cords at the start of the run
    while(1) {
        Send, {f1}
        Random, rand, 955, 1125 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(900,546)
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 875, 1105 ; Set new random sleep
        Sleep, %rand%

        Send, {space}

        Random, rand, 67500, 68750 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(558,508)
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 1000, 1250 ; Set new random sleep
        Sleep, %rand%
    }

