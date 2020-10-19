; See https://github.com/J-P-Bakker/TC-ahk/blob/master/Screenshots/sandstone.png
!1::Reload

!2::ExitApp

checkRock(xpos, ypos) {
    found = False
    xpos_end = xpos + 10
    ypos_end = ypos + 10
    itemColor = 0xCDCC00
    ; Check if color (with variation of 20) exists in square
    while (found != True){
        PixelSearch, OutputVarX, OutputVarY, xpos, ypos, xpos_end, ypos_end, itemColor, 40, Fast RGB
        if ErrorLevel {
            ; Als long as rock is "there" keep mining
            return
        } else {
            return False
            found = True
        }
    }
}

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 13
    Random, ySway, 0, 13

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

rockOneStart() {
    ; Mine rock one from NPC
    mining = True
    square := createsquare(1080,255)
    MouseMove, square.x, square.y, 4
    click

    sleep, 1500

    while (mining){
        sleep, 500
        mining = checkRock(595, 426)
    }
}

rockTwo() {
    ; Mine rock two from rock one position
    mining = True
    square := createsquare(613,458)
    MouseMove, square.x, square.y, 4
    click

    while (mining){
        sleep, 500
        mining = checkRock(595, 426)
    }
}

RockThree() {
    mining = True
    ; Mine rock three from rock two position
    square := createsquare(705,465)
    MouseMove, square.x, square.y, 4
    click

    while (mining){
        sleep, 500
        mining = checkRock(652, 605)
    }
}

rockOne() {
    ; Mine rock one from Rock three position.
    mining = True
    square := createsquare(575,375)
    MouseMove, square.x, square.y, 4
    click

    while (mining = True){
        sleep, 500
        mining = checkRock(595, 426)
    }
}

deliverSand() {
    ; Select item pos 1
    square := createsquare(1147,545)
    MouseMove, square.x, square.y, 4
    click

    Random, rand, 100, 250 ; Set new random sleep
    Sleep, %rand%

    ; Use selected item on Drew
    square := createsquare(9,575)
    MouseMove, square.x, square.y, 4
    click

}

#IfWinActive, ahk_exe RuneLite.exe
    ; Face north and set camera to face from top down
    ; Start at rockOne (NW rock) and mine this one manually, then press space
    1::
        runCount = 0
        while (1){
            if (runCount != 0) {
                if (runCount > 6 and mod(runCount, 7) = 0){
                    rockOneStart()
                }
                else {
                    rockOne()
                }
            }
            rockTwo()
            rockThree()
            runCount++
            if (runCount > 6 and mod(runCount, 7) = 0){
                deliverSand()
            }
        }