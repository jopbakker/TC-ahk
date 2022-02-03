#MaxThreadsPerHotkey 2

!1::Reload

!2::ExitApp


5::
toggle := !toggle
countloop = 0
while (toggle && countloop < 10000) {
    Send SPACE
    Random, rand, 220, 350
    Sleep %rand%
    countloop++
}
return