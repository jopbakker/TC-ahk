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
        Send, {f10}
        Random, rand, 600, 850 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(1427,575)
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 5500, 6300 ; Set new random sleep
        Sleep, %rand%

        Send, {space}

        Random, rand, 17500, 18300 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(262,626)
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 5500, 6300 ; Set new random sleep
        Sleep, %rand%
    }

2:: ; Glass blowing
    while(1) {
        Send, {f1}
        Random, rand, 1550, 1750 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(1089,773)
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 1000, 1250 ; Set new random sleep
        Sleep, %rand%

        Send, {space}

        Random, rand, 51000, 52500 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(558,508)
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 1000, 1250 ; Set new random sleep
        Sleep, %rand%
    }