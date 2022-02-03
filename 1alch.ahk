#MaxThreadsPerHotkey 2

!1::Reload

!2::ExitApp


Space::
countloop = 0
while (countloop < 2) {
    MouseClick, Left
    Random, rand, 150, 226
    Sleep %rand%
    countloop++
}
return