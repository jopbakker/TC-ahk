!1::Reload

!2::ExitApp

#IfWinActive, ahk_exe RuneLite.exe
    ; Buys 50 of the item currently "selected"
    1::
    Numpad1::
    RButton::
        Random, xSway, -10, 10
        Random, ySway, 40, 45
        Click, Right
        MouseMove, %xSway%, %ySway%, 4, R
        Click