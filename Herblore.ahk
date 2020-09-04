!1::Reload

!2::ExitApp

createxpos(xpos) {
    ; Create square from start position
    Random, xSway, 0, 25
    xpos += %xSway%
    return %xpos%
}

createypos(ypos) {
    ; Create square from start position
    Random, ySway, 0, 25
    ypos += %ySway%
    return %ypos%
}

withdraw() {
    ; Withdraw from marker 1
    x := createxpos(700)
    y := createypos(345)
    MouseMove, x, y, 4
    click
    
    Random, rand, 100, 250 ; Set new random sleep
    Sleep, %rand%
    
    ; Withdraw from marker 2
    x := createxpos(700)
    y := createypos(382)
    MouseMove, x, y, 4
    click
}

make() {
    ; Select marker 4
    x := createxpos(1150)
    y := createypos(650)
    MouseMove, x, y, 4
    click
    
    Random, rand, 100, 250 ; Set new random sleep
    Sleep, %rand%
    
    ; Select marker 5
    x := createxpos(1150)
    y := createypos(685)
    MouseMove, x, y, 4
    click
}

bank() {
    ; Select marker 3 twice to open bank and bank all
    x := createxpos(720)
    y := createypos(625)
    MouseMove, x, y, 4
    click
    
    Random, rand, 750, 1100 ; Set new random sleep
    Sleep, %rand%
    
    Click
}

#IfWinActive, ahk_exe RuneLite.exe
    ; Max zoom, edgeville with herblore marker
    1::
        while(1){
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
        
        