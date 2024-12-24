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

Numpad4::
; Hove mouse over the top item (i.e. dart tip in inv pos 1 and feather in 5)
MouseGetPos, originX, originY
toggle := !toggle
while (toggle) {
    Random, xSway, -6, 6
    Random, ySway, 35, 55
    Click
    MouseMove, xSway, ySway, 3, R
    Click
    Random, xSway, -6, 6
    Random, ySway, -4, 4
    new_xhome := originX + xSway
    new_yhome := originY + ySway
    MouseMove, new_xhome, new_yhome, 3
    }