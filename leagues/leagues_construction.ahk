#MaxThreadsPerHotkey 2


!1::Reload

!2::ExitApp
Esc::ExitApp

sleep_random(min,max) {
	Random, rand, %min%, %max%
	sleep %rand%
}


#IfWinActive, ahk_exe RuneLite.exe
Numpad4::
; Hove mouse over the top item (i.e. dart tip in inv pos 1 and feather in 5)
MouseGetPos, originX, originY
while (1) {
    Click
    sleep_random(650, 745)
    Send, {1}
    sleep_random(1255, 1400)
    Click
    sleep_random(580, 722)
    Send, {1}
    sleep_random(750, 888)
    Send {Shift down}
    Random, xSway, -10, 15
    Random, ySway, 50, 62
    MouseMove, xSway, ySway, 3, R
    Click
    Send {Shift up}
    MouseMove, originX, originY, 3
}