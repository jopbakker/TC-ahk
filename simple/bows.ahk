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

sleep_random(min,max) {
	Random, rand, %min%, %max%
	sleep %rand%
}

Withdraw(log_x, log_y) {
    square := createsquare(log_x, log_y)
    MouseMove, square.x, square.y, 2
    sleep_random(300, 524)
    Click
    sleep_random(300, 524)
    Send {Escape}
}

fletch(knife_x, knife_y, log_x, log_y) {
    square := createsquare(knife_x, knife_y)
    MouseMove, square.x, square.y, 2
    sleep_random(300, 524)
    Click
    sleep_random(300, 524)
    square := createsquare(log_x, log_y)
    MouseMove, square.x, square.y, 2
    sleep_random(300, 524)
    Click
    sleep_random(650, 950)
    Send {Space}
    }

Bank(bank_x, bank_y) {
    square := createsquare(bank_x, bank_y)
    MouseMove, square.x, square.y, 2 
    sleep_random(300, 524)
    Click
    sleep_random(300, 524)
    ; Deposit
    square := createsquare(852, 747)
    MouseMove, square.x, square.y, 2
    sleep_random(300, 524)
    Click
    }

; Runelite: 1500x1000
; Stretched mode: keep aspect ratio, 40%
; Change bank cords
; Lock knife in slot 1
#IfWinActive, ahk_exe RuneLite.exe
Numpad4::
    countloop = 0
    while (countloop < 5000) {
        Withdraw(561,349)
        fletch(1263,620,1263,670)
        sleep_random(50000,54000)
        Bank(775,400)
        sleep_random(350, 745)
    }
    return