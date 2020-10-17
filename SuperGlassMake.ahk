; See https://github.com/J-P-Bakker/TC-ahk/blob/master/Screenshots/SuperGlassMake.png

!1::Reload

!2::ExitApp

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 10
    Random, ySway, 0, 10

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

withdraw() {
    ; Withdraw from marker 1
    square := createsquare(700,345)
    MouseMove, square.x, square.y, 7
    Click, Right
    Random, xSway, -10, 10
    Random, ySway, 65, 70
    MouseMove, %xSway%, %ySway%, 7, R
    Click

    Random, rand, 100, 250 ; Set new random sleep
    Sleep, %rand%

    ; Withdraw from marker 2
    square := createsquare(700,382)
    MouseMove, square.x, square.y, 7
    click
    Sleep, %rand%
    click
    Sleep, %rand%
    click
}

make() {
    ; Cast superglassmake spell
    square := createsquare(1135,639)
    MouseMove, square.x, square.y, 7
    click
}

bank() {
    ; Select marker 3 to open bank
    square := createsquare(720,625)
    MouseMove, square.x, square.y, 7
    click

    Random, rand, 750, 1100 ; Set new random sleep
    Sleep, %rand%

    ; Deposit all glass
    square := createsquare(1150,540)
    MouseMove, square.x, square.y, 7
    Click, Right

    Random, rand, 100, 250 ; Set new random sleep
    Sleep, %rand%

    Random, xSway, -10, 10
    Random, ySway, 96, 105
    MouseMove, %xSway%, %ySway%, 7, R
    Click

}

pickup() {
    Send, {Esc}

    Random, rand, 300, 500 ; Set new random sleep
    Sleep, %rand%

    square := createsquare(675,460)
    MouseMove, square.x, square.y, 7

    Sleep, %rand%

    while (1) {
        Random, rand, 200, 450 ; Set new random sleep
        Click ; Click left mouse
        Sleep, %rand% ; Sleep for random time %rand% 
    }
}

#IfWinActive, ahk_exe RuneLite.exe
    ; Make sure magebook is open (when not interacting with the bank)
    ; Make sure withdraw X is on 18 and the leftclick is on 1
    1::
        ; Will make one full SuperGlassMake loop
        loop, 5 {
            Random, rand, 300, 500 ; Set new random sleep
            withdraw()
            Sleep, %rand%
            Send, {Esc}
            Sleep, %rand%
            make()
            Random, rand, 1950, 2300 ; Set new random sleep
            Sleep, %rand%
            Bank()
        }

        pickup()
    2::
