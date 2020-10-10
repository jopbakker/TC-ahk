!1::Reload

!2::ExitApp

#IfWinActive, ahk_exe RuneLite.exe
    ; Buys 50 of the item currently "selected"
    1::
    Numpad1::
        Random, xSway, -10, 10
        Random, ySway, 80, 85
        Click, Right
        MouseMove, %xSway%, %ySway%, 4, R
        Click