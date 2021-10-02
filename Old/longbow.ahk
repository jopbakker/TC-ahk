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
    square := createsquare(700,343)
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

    ; Select inv pos 5
    square := createsquare(1150,575)
    MouseMove, square.x, square.y, 4
    click
}

bank() {
    ; Select marker 3 twice to open bank and bank all
    square := createsquare(720,623)
    MouseMove, square.x, square.y, 4
    click

    Random, rand, 750, 1100 ; Set new random sleep
    Sleep, %rand%

    ; Bank inv pos 5
    square := createsquare(1150,575)
    MouseMove, square.x, square.y, 4
    click
}

#IfWinActive, ahk_exe RuneLite.exe
    ; Line up marker 3 with bank
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
            Random, rand, 48750, 50000 ; Set new random sleep
            Sleep, %rand%
            bank()
            Random, rand, 500, 800 ; Set new random sleep
            Sleep, %rand%
        }