#MaxThreadsPerHotkey 2

!1::Reload

!2::ExitApp


4::
toggle := !toggle
countloop = 0
while (toggle && countloop < 10000) {
    MouseClick
    Random, rand, 120, 260
    Sleep %rand%
    countloop++
}
return