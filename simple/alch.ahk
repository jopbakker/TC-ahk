#MaxThreadsPerHotkey 2

!1::Reload

!2::ExitApp

; 1 click alching with the item to alch "below" the alch icon in the mage book
Space::
countloop = 0
while (countloop < 5000) {
    MouseClick, Left
    Random, rand, 450, 750
    Sleep %rand%
    countloop++
}
return