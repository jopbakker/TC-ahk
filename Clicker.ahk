!1::Reload

!2::ExitApp

1::
    If WinActive("ahk_exe RuneLite.exe") || WinActive("ahk_exe OpenOSRS.exe")
        ; "spam" clicks the current mouse position
    while (1) {
        Random, rand, 150, 220 ; Set new random sleep
        Click ; Click left mouse
        Sleep, %rand% ; Sleep for random time %rand% 
    }
Return

