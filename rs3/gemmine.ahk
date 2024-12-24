#MaxThreadsPerHotkey 2

!1::Reload

!2::ExitApp


Numpad4::
toggle := !toggle
countloop = 0
while (toggle && countloop < 10000) {
    MouseClick, Left
    Random, rand, 10000, 15000 
    Sleep %rand% 
    countloop++ 
    }
return


Numpad5::
toggle := !toggle
countloop = 0
while (toggle && countloop < 10000) {
    ; Get bank preset 1
    Send, {1}

    ; Press r
    Random, rand, 850, 1050 ; Set new random sleep
    Sleep, %rand%
    Send, {r}

    ; Press space
    Random, rand, 750, 950 ; Set new random sleep
    Sleep, %rand%
    Send, {Space}

    ; Sleep 15-16 for crafting
    Random, rand, 16500,  18000
    Sleep %rand% 
    ; Open bank
    MouseClick, Left
    Random, rand, 50, 150 ; Set new random sleep
    Sleep, %rand%
    MouseClick, Left
    Random, rand, 1000, 1200 
    Sleep %rand% 
    countloop++ 
    }
return


