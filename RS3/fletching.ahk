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

1:: ; Fletch
    while(1) {
        Send, {f10} ; Extract preset 10
        Random, rand, 1550, 1750 ; Set new random sleep
        Sleep, %rand%

        ; square := createsquare(1089,818) ; Click inv pos 1
        ; MouseMove, square.x, square.y, 4
        ; click

        square := createsquare(815,493) ; Click heater
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 966, 1106 ; Set new random sleep
        Sleep, %rand%

        Send, {space} ; Start crafting

        Random, rand, 50150, 51252 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(558,508) ; Click bank chest
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 1000, 1250 ; Set new random sleep
        Sleep, %rand%
    }

2:: ; String
    while(1) {
        Send, {f10} ; Extract preset 10
        Random, rand, 1550, 1750 ; Set new random sleep
        Sleep, %rand%

        ; square := createsquare(1089,818) ; Click inv pos 1
        ; MouseMove, square.x, square.y, 4
        ; click

        square := createsquare(815,493) ; Click heater
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 966, 1106 ; Set new random sleep
        Sleep, %rand%

        Send, {space} ; Start crafting

        Random, rand, 15000, 16120 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(558,508) ; Click bank chest
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 1000, 1250 ; Set new random sleep
        Sleep, %rand%
    }
3:: ; ammo
    while(1) {
        square := createsquare(808,513) ; Click portable
        MouseMove, square.x, square.y, 4
        click
        Random, rand, 255, 410 ; Set new random sleep
        Sleep, %rand%
        click

        Random, rand, 966, 1106 ; Set new random sleep
        Sleep, %rand%

        Send, {space} ; Start crafting

        Random, rand, 26850, 28359 ; Set new random sleep
        Sleep, %rand%
    }