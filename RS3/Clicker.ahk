!1::Reload

!2::ExitApp

1::
    while (1) {
        Random, rand, 150, 220 ; Set new random sleep
        Click ; Click left mouse
        Sleep, %rand% ; Sleep for random time %rand% 
    }
Return

