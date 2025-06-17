!1::Reload

!2::ExitApp


Numpad4::
toggle := !toggle
countloop = 0
while (toggle && countloop < 10000) {
    send {enter}
    Random, rand, 60000, 150000 
    Sleep %rand% 
    countloop++ 
    }
return