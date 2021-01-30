!1::Reload

!2::ExitApp

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 40
    Random, ySway, 0, 40

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

rockOne() {
    ; Mine rock one
    square := createsquare(240,60)
    MouseMove, square.x, square.y, 6
    click
}

rockTwo() {
    ; Mine rock two
    square := createsquare(133,162)
    MouseMove, square.x, square.y, 6
    click
}

rockThree() {
    ; Mine rock three
    square := createsquare(361,171)
    MouseMove, square.x, square.y, 6
    click
}

#IfWinActive, ahk_exe RuneLite.exe
    ; Game size fixed
    ; Face Rock one (center rock), zoom max, face top down
    ; 
    1::
        while(1) {
            rockOne()
            Random, rand, 1355, 1420 ; Set new random sleep
            Sleep, %rand%
            rockTwo()
            Random, rand, 1355, 1420 ; Set new random sleep
            Sleep, %rand%
            rockThree()
            Random, rand, 1355, 1420 ; Set new random sleep
            Sleep, %rand%
        }