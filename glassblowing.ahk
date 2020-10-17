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
    MouseMove, square.x, square.y, 6
    click
}

make() {
    ; Select inv pos 1
    square := createsquare(1150,540)
    MouseMove, square.x, square.y, 6
    click

    Random, rand, 100, 250 ; Set new random sleep
    Sleep, %rand%

    ; Select inv pos 5
    square := createsquare(1150,575)
    MouseMove, square.x, square.y, 6
    click

}

bank() {
    ; Select marker 3 twice to open bank and bank all
    square := createsquare(720,625)
    MouseMove, square.x, square.y, 6
    click

    Random, rand, 750, 1100 ; Set new random sleep
    Sleep, %rand%

    ; Bank inv pos 5
    square := createsquare(1150,575)
    MouseMove, square.x, square.y, 6
    click
}

#IfWinActive, ahk_exe RuneLite.exe
    ; Line up marker 3 (Bank) with bank
    1::
        while(1) { ; Unf potions
            Random, rand, 400, 650 ; Set new random sleep
            withdraw()
            Sleep, %rand%
            Send, {Esc}
            Sleep, %rand%
            make()
            Random, rand, 650, 950 ; Set new random sleep
            Sleep, %rand%
            Send, {Space}

            ; Move "off" screen (requires sidepanel open)
            square := createsquare(1388,370)
            MouseMove, square.x, square.y, 6
            click

            Random, rand, 48510, 51030 ; Set new random sleep
            Sleep, %rand%
            bank()
        }

    2::
