#MaxThreadsPerHotkey 2

+1::Reload

+2::ExitApp


createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 2, 25
    Random, ySway, 2, 25

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

clickinv() {
    square := createsquare(1260,660)
    MouseMove, square.x, square.y, 3
    click
}

clickaltar() {
    square := createsquare(1173,660)
    MouseMove, square.x, square.y, 3
    click
}


5::
toggle := !toggle
countloop = 0
while (toggle && countloop < 10000) {
    Send {Shift down}
    clickinv()
    Random, rand, 100, 220 ; Set new random sleep
    Sleep, %rand%
    clickaltar()
    Random, rand, 150, 220 ; Set new random sleep
    Sleep, %rand%
    loopcount++
    Send {Shift Up}
}
return