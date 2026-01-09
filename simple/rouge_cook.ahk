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

Withdraw(food_x, food_y) {
    square := createsquare(food_x, food_y)
    MouseMove, square.x, square.y, 2
    sleep_random(300, 524)
    Click
}

Cook(fire_x, fire_y) {
    square := createsquare(fire_x, fire_y)
    MouseMove, square.x, square.y, 2
    sleep_random(300, 524)
    Click
    sleep_random(450, 622)
    Send {Space}
    }

Bank(bank_x, bank_y) {
    square := createsquare(bank_x, bank_y)
    MouseMove, square.x, square.y, 2 
    sleep_random(300, 524)
    Click
    sleep_random(300, 524)
    square := createsquare(852, 747)
    MouseMove, square.x, square.y, 2
    sleep_random(300, 524)
    Click
    }

; Enable Camera plugin inner zoom limit
; Enable Camera plugin pitch limit
; Rotate camera 90 west (fire on right side)
; Fill values for food location


#IfWinActive, ahk_exe RuneLite.exe
Numpad4::
    countloop = 0
    while (countloop < 5000) {
        Withdraw(830,580)
        Cook(990,494)
        sleep_random(65000,75000)
        Bank(730,230)
        sleep_random(350, 745)
    }
; sleep_random(650, 745)
