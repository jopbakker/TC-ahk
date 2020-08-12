!1::Reload

!2::ExitApp

#IfWinActive, ahk_exe RuneLite.exe
    1::
    Numpad1::
    RButton::
        Random, xSway, -20, 20
        Random, ySway, 80, 88
        Click, Right
        MouseMove, %xSway%, %ySway%, 4, R
        Click