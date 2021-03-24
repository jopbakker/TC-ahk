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

withdraw(number) {
    ; Withdraw from marker 1
    square := createsquare(700,345)
    MouseMove, square.x, square.y, 4
    click

    Random, rand, 100, 250 ; Set new random sleep
    Sleep, %rand%
    if(number > 1){
        ; Withdraw from marker 2
        square := createsquare(700,382)
        MouseMove, square.x, square.y, 4
        click
    }
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

inventloop(){
    loopcount = 0
    number = 0
    loop, 7 {
        loopcount++
        number = 1
        if(number = 1){
            number = 0
            Click
            MouseMove, 36, 0, %speed%, R
            Click
        }
        if (loopcount < 7){
            MouseMove, -36, 36, %speed%, R
        }
    }
    MouseMove, 45, 0, %speed%, R
    loopcount = 0
    loop, 7 {
        loopcount++
        number = 1
        if(number = 1){
            number = 0
            Click
            MouseMove, 36, 0, %speed%, R
            Click
        }
        if (loopcount < 7){
            MouseMove, -36, -36, %speed%, R
        }
    }
    Return
}

#IfWinActive, ahk_exe RuneLite.exe
    ; Line up marker 3 (Bank) with bank
    1::
        while(1) { ; Unf potions
            Random, rand, 300, 500 ; Set new random sleep
            withdraw(2)
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
            withdraw(2)
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

    3::
        while(1) {
            withdraw(1)

            Random, rand, 300, 500 ; Set new random sleep
            Sleep, %rand%

            Send, {Esc}
            square := createsquare(1150,543)

            MouseMove, square.x, square.y, 4
            Random, rand, 300, 500 ; Set new random sleep
            Sleep, %rand%

            inventloop()

            Random, rand, 1200, 1300 ; Set new random sleep
            Sleep, %rand%

            bank()

            Random, rand, 300, 500 ; Set new random sleep
            Sleep, %rand% 
        }
