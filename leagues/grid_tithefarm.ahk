#MaxThreadsPerHotkey 2
#IfWinActive ahk_exe runelite.exe

; alt 1
!1::Reload

; alt 1
!2::ExitApp


sleep_random(min,max) {
	Random, rand, %min%, %max%
	sleep %rand%
}

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 2, 20
    Random, ySway, 2, 20

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

Numpad4::
; Hove mouse over the top item (i.e. dart tip in inv pos 1 and feather in 5)
MouseGetPos, originX, originY
toggle := !toggle
while (toggle) {
    ; Click seed
    square := createsquare(604,700)
    MouseMove, square.x, square.y, 2 
    sleep_random(300, 524)
    Click
    sleep_random(150, 255)
    ; Click patch
    square := createsquare(617,550)
    MouseMove, square.x, square.y, 2 
    sleep_random(150, 255)
    Click
    sleep_random(1400, 1690)
    ; Harvest
    Click
    sleep_random(350, 650)
    }