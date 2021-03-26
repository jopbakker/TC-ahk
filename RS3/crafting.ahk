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

1:: ; D-hide shield
    while(1) {
        Send, {f1} ; Extract preset 1
        Random, rand, 1550, 1750 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(1089,818) ; Click inv pos Row 6 (row 2 slot 1)
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 1000, 1250 ; Set new random sleep
        Sleep, %rand%

        Send, {space} ; Start crafting

        Random, rand, 10200, 11255 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(558,508) ; Click bank chest
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 1000, 1250 ; Set new random sleep
        Sleep, %rand%
    }