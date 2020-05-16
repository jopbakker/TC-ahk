#IfWinActive, ahk_exe RuneLite.exe
    1::
        while (1) {
            Random, rand, 200, 550
            Click
            Sleep, %rand%
        }
    Return
    
    
    2::Reload
    
    3::ExitApp