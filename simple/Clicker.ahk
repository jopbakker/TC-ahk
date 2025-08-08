#MaxThreadsPerHotkey 2

!1::Reload

!2::ExitApp


Numpad4::
toggle := !toggle
countloop = 0
while (toggle && countloop < 10000) {
    MouseClick, Left
    Random, rand, 50, 250 
    Sleep %rand% 
    countloop++ 
    }
return


Numpad5::
toggle := !toggle
countloop = 0
while (toggle && countloop < 10000) {
    MouseClick, Left
    Random, rand, 100, 145 
    Sleep %rand% 
    countloop++ 
    }
return


