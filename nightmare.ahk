#MaxThreadsPerHotkey 2

!1::Reload

!2::ExitApp


4::
toggle := !toggle
countloop = 0
while (toggle && countloop < 10000) {
    MouseClick
    Random, rand, 120, 350
    Sleep %rand%
    MouseClick
    Random, rand, 32000, 51000
    Sleep %rand%
    countloop++
}
return