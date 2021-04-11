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
        Send, {f10} ; Extract preset 1
        Random, rand, 1550, 1750 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(523,108) ; portable crafter
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 104600, 109578 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(195,430) ; Click bank chest
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 1000, 1250 ; Set new random sleep
        Sleep, %rand%
    }