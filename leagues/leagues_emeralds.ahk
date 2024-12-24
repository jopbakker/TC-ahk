!1::Reload

!2::ExitApp

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 2, 20
    Random, ySway, 2, 20

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

make() {
    ; Select marker 1
    square := createsquare(1260,660)
    MouseMove, square.x, square.y, 4
    click

    Random, rand, 100, 250 ; Set new random sleep
    Sleep, %rand%

    ; Select marker 2
    square := createsquare(1300,660)
    MouseMove, square.x, square.y, 4
    click
}

sell() {
    ; Select marker 3 twice to open bank and bank all
    square := createsquare(1300,660)
    MouseMove, square.x, square.y, 4
    Send {Shift Down}
    Random, rand, 300, 524 ; Set new random sleep
    Sleep, %rand%
    Click
    Send {Shift Up}
}

buy() {
    ; Select marker 3 twice to open bank and bank all
    square := createsquare(475,300)
    MouseMove, square.x, square.y, 4
    Send {Shift Down}
    Random, rand, 450, 700 ; Set new random sleep
    Sleep, %rand%

    countloop = 0
    Random, random_click, 25, 32 ; Set new random sleep
    while (countloop < random_click) {
        MouseClick, Left
        countloop++ 
    }

    Send {Shift Up}
}

#IfWinActive, ahk_exe RuneLite.exe
    3::
        sell()
        Random, rand, 300, 500 ; Set new random sleep
        Sleep, %rand%
        buy()
        Random, rand, 300, 500 ; Set new random sleep
        Sleep, %rand%
        Send, {Esc}
        Random, rand, 300, 500 ; Set new random sleep
        Sleep, %rand%
        make()
        Random, rand, 500, 750 ; Set new random sleep
        Sleep, %rand%
