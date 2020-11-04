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

withdraw() {
    ; Withdraw
    square := createsquare(605,365)
    MouseMove, square.x, square.y, 4
    click
}

make() {
    ; Select inv pos 1
    square := createsquare(1150,540)
    MouseMove, square.x, square.y, 4
    click

    Random, rand, 100, 250 ; Set new random sleep
    Sleep, %rand%

    ; Select vent
    square := createsquare(667,156)
    MouseMove, square.x, square.y, 4
    click
}

bank() {
    square := createsquare(850,363)
    MouseMove, square.x, square.y, 4
    click

    Random, rand, 750, 1100 ; Set new random sleep
    Sleep, %rand%

    ; Bank all
    square := createsquare(716,627)
    MouseMove, square.x, square.y, 4
    click
}

#IfWinActive, ahk_exe RuneLite.exe
    ; Runelite size 1340x800
    ; Face north, zoom max, face top down
    ; Make sure the food type is on "space" to cook
    1::
        while(1) {
            Random, rand, 300, 500 ; Set new random sleep
            withdraw()
            Sleep, %rand%
            Send, {Esc}
            Sleep, %rand%
            make()
            Random, rand, 650, 950 ; Set new random sleep
            Sleep, %rand%
            Send, {Space}
            Random, rand, 66750, 69000 ; Set new random sleep
            Sleep, %rand%
            bank()
            Random, rand, 500, 800 ; Set new random sleep
            Sleep, %rand%
        }