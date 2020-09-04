!1::Reload

!2::ExitApp

#IfWinActive, ahk_exe RuneLite.exe
    1::
        while (1) {
            MouseGetPos, originX, originY
            Random, xSway, -15, 15
            Random, ySway, 35, 55
            Click
            MouseMove, %xSway%, %ySway%, 4, R
            Click
            MouseMove, %originX%, %originY%, 4
        }
        