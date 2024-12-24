#MaxThreadsPerHotkey 2


+1::Reload

+2::ExitApp
Esc::ExitApp

#IfWinActive, ahk_exe RuneLite.exe
1::
; Hove mouse over the top item (i.e. dart tip in inv pos 1 and feather in 5)

while (1) {
    Send {Shift down}
    MouseGetPos, originX, originY
    Random, xSway, -100, -75
    Random, ySway, -8, 8
    Click
    MouseMove, %xSway%, %ySway%, 3, R
    Send {Shift up}
    Click
    MouseMove, %originX%, %originY%, 3
    
}