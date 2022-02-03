!1::Reload

!2::ExitApp


1::
countloop = 0
while (countloop < 6) {
    MouseMove, 1200, 590
    MouseClick, Left
    Random, rand, 55, 150
    Sleep %rand%
    MouseMove, 1278, 620
    MouseClick, Left
    Random, rand, 55, 150
    Sleep %rand%
    countloop++
}
Random, rand, 350, 405
Sleep %rand%
countloop = 0
while (countloop < 6) {
    MouseMove, 1200, 590
    MouseClick, Left
    Random, rand, 55, 150
    Sleep %rand%
    MouseMove, 1200, 692
    MouseClick, Left
    Random, rand, 55, 150
    Sleep %rand%
    countloop++
}
return

2::
countloop = 0
while (countloop < 1) {
    MouseMove, 662, 371
    MouseClick, Left
    Random, rand, 55, 150
    Sleep %rand%
    MouseMove, 663, 407
    MouseClick, Left
    Random, rand, 55, 150
    Sleep %rand%
    MouseMove, 715, 407
    MouseClick, Left
    Random, rand, 55, 150
    Sleep %rand%
    MouseMove, 714, 371
    MouseClick, Left
    Random, rand, 55, 150
    Sleep %rand%
    Random, rand, 200, 350
    Sleep %rand%
    Send {ESC}
    countloop++
}

Return