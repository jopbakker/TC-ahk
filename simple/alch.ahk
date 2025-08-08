#MaxThreadsPerHotkey 2

!1::Reload

!2::ExitApp

; 1 click alching with the item to alch "below" the alch icon in the mage book
Space::
countloop = 0
while (countloop < 2) {
    MouseClick, Left
    Random, rand, 150, 226
    Sleep %rand%
    countloop++
}
return