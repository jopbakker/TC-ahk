!1::Reload

!2::ExitApp

#UseHook, On

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 25
    Random, ySway, 0, 25

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

build() {
    ; Build number
    Click, Right
    MouseMove, 0, 53, 4, R
    click
    Random, rand, 630, 655 ; Set new random sleep
    sleep %rand%
    Send, 4
}

remove() {
    ; Remove
    Click, Right
    MouseMove, 0, 72, 4, R
    click
    Random, rand, 630, 650 ; Set new random sleep
    sleep %rand%
    Send, 1
}

#IfWinActive, ahk_exe RuneLite.exe
    ; Line up marker 3 (Bank marker) with curtain
    6::
        while(1) {
            KeyWait, 2, D
            build()
            KeyWait, 2, D
            remove()
        }
