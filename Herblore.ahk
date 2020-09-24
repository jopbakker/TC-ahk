!1::Reload

!2::ExitApp

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 25
    Random, ySway, 0, 25

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

withdraw() {
    ; Withdraw from marker 1
    square := createsquare(700,345)
    MouseMove, square.x, square.y, 4
    click

    Random, rand, 100, 250 ; Set new random sleep
    Sleep, %rand%

    ; Withdraw from marker 2
    square := createsquare(700,382)
    MouseMove, square.x, square.y, 4
    click
}

make() {
    ; Select marker 4
    square := createsquare(1150,650)
    MouseMove, square.x, square.y, 4
    click

    Random, rand, 100, 250 ; Set new random sleep
    Sleep, %rand%

    ; Select marker 5
    square := createsquare(1150,685)
    MouseMove, square.x, square.y, 4
    click
}

bank() {
    ; Select marker 3 twice to open bank and bank all
    square := createsquare(720,625)
    MouseMove, square.x, square.y, 4
    click

    Random, rand, 750, 1100 ; Set new random sleep
    Sleep, %rand%

    Click
}

#IfWinActive, ahk_exe RuneLite.exe
    ; Line up marker 3 (Bank) with bank
    1::
        while(1) { ; Unf potions
            Random, rand, 300, 500 ; Set new random sleep
            withdraw()
            Sleep, %rand%
            Send, {Esc}
            Sleep, %rand%
            make()
            Random, rand, 650, 950 ; Set new random sleep
            Sleep, %rand%
            Send, {Space}
            Random, rand, 9000, 10000 ; Set new random sleep
            Sleep, %rand%
            bank()
        }

    2::
        while(1) { ; Complete potions
            Random, rand, 300, 500 ; Set new random sleep
            withdraw()
            Sleep, %rand%
            Send, {Esc}
            Sleep, %rand%
            make()
            Random, rand, 650, 950 ; Set new random sleep
            Sleep, %rand%
            Send, {Space}
            Random, rand, 17000, 18000 ; Set new random sleep
            Sleep, %rand%
            bank()
        }
