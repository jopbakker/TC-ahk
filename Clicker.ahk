!1::Reload

!2::ExitApp

;IfWinActive, ahk_exe RuneLite.exe
1::
    ; "spam" clicks the current mouse position
    while (1) {
        Random, rand, 200, 450 ; Set new random sleep
        Click ; Click left mouse
        Sleep, %rand% ; Sleep for random time %rand% 
    }
Return

