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

1:: ; Potions (full)
    while(1) {
        Send, {f10} ; Extract preset 1
        Random, rand, 1550, 1750 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(1222,525) ; portable crafter
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 1000, 1250 ; Set new random sleep
        Sleep, %rand%

        Send, {space} ; Start crafting

        Random, rand, 17235, 18124 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(539,505) ; Click bank chest
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 1000, 1250 ; Set new random sleep
        Sleep, %rand%
    }

2:: ; clean herbs/unfin pots
    while(1) {
        Send, {f10} ; Extract preset 1
        Random, rand, 1150, 1368 ; Set new random sleep
        Sleep, %rand%

        square := createsquare(1089,777) ; Click inv pos (row 2 slot 1)
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 877, 1088 ; Set new random sleep
        Sleep, %rand%

        Send, {space} ; Start crafting

        Random, rand, 17000, 17350 ; Set new random sleep
        Sleep, %rand% 

        square := createsquare(539,505) ; Click bank chest
        MouseMove, square.x, square.y, 4

        click

        Random, rand, 877, 1088 ; Set new random sleep
        Sleep, %rand%
    }
