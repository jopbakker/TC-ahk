!1::Reload

!2::ExitApp

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 22
    Random, ySway, 0, 22

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

withdraw(x){
    if (mod(x,2) == 0){
        square := createsquare(657,182) ; withdraw stam
        MouseMove, square.x, square.y, 5
        Send {Shift Down}
        click
        Random, rand, 400, 455 ; Set new random sleep
        Sleep, %rand%
        square := createsquare(1200,587) ; INV pos stam
        MouseMove, square.x, square.y, 5
        click
        Send {Shift Up}
    }

    square := createsquare(708,218) ; withdraw ess
    MouseMove, square.x, square.y, 5
    click
    Random, rand, 255, 366 ; Set new random sleep
    Sleep, %rand%
}

pouch(){
    Send {Shift Down}
    square := createsquare(1154,594) ; Pouch 1
    MouseMove, square.x, square.y, 5
    click
    Random, rand, 200, 311 ; Set new random sleep
    Sleep, %rand%
    square := createsquare(1154,624) ; Pouch 3
    MouseMove, square.x, square.y, 5
    click
    Random, rand, 200, 311 ; Set new random sleep
    Sleep, %rand%
    square := createsquare(1154,661) ; Pouch 3
    MouseMove, square.x, square.y, 5
    click
    Send {Shift Up}
}

deposit(){
    square := createsquare(722,670) ; Pouch2
    MouseMove, square.x, square.y, 5
    Random, rand, 200, 311 ; Set new random sleep
    Sleep, %rand%
    click
}


1::
    num = 1
    while(1){
        withdraw(num)
        pouch()
        withdraw(1)
        num := ++num
        KeyWait, space, d
        deposit()
    }