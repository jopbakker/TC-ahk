!1::Reload

!2::ExitApp
; All below "scripts" start from the CURRENT mouse position

#IfWinActive, ahk_exe RuneLite.exe
; Loop through inventory and click all items
    1::
        loopcount = 0
        Click
        loop, 2{
            loopcount++
            loop, 6 { ;Loop first row
                MouseMove, 0, 36, 0, R
                Click
            }
            MouseMove, 40, 0, 0, R ;Move over 1 row
            Click
            loop, 6 { ;Loop back up
                MouseMove, 0, -36, 0, R
                Click
            }
            if (loopcount < 2){ ; Make sure mouse does not move out of inv in last loop
                MouseMove, 40, 0, 0, R ;Move over 1 row
            }
            Click
        }
    Return

; Loop through inventory and click all items but the bottom row
    Numpad4::
        loopcount = 0
        Click
        loop, 2{
            loopcount++
            loop, 5 { ;Loop first row
                MouseMove, 0, 36, 0, R
                Click
            }
            MouseMove, 40, 0, 0, R ;Move over 1 row
            Click
            loop, 5 { ;Loop back up
                MouseMove, 0, -36, 0, R
                Click
            }
            if (loopcount < 2){ ; Make sure mouse does not move out of inv in last loop
                MouseMove, 40, 0, 0, R ;Move over 1 row
            }
            Click
        }
    Return

; Loop through inventory and drop (shift click) all items
    3::
        loopcount = 0
        Send {Shift down}
        Click
        loop, 2{
            loopcount++
            loop, 6 { ;Loop first row
                MouseMove, 0, 36, 0, R
                Click
            }
            MouseMove, 40, 0, 0, R ;Move over 1 row
            Click
            loop, 6 { ;Loop back up
                MouseMove, 0, -36, 0, R
                Click
            }
            if (loopcount < 2){ ; Make sure mouse does not move out of inv in last loop
                MouseMove, 40, 0, 0, R ;Move over 1 row
            }
            Click
        }
        Send {Shift up}
    Return

; Loop through inventory and drop (shift click) all items but the bottom row
    4::
        loopcount = 0
        Send {Shift down}
        Click
        loop, 2{
            loopcount++
            loop, 5 { ;Loop first row
                MouseMove, 0, 36, 0, R
                Click
            }
            MouseMove, 40, 0, 0, R ;Move over 1 row
            Click
            loop, 5 { ;Loop back up
                MouseMove, 0, -36, 0, R
                Click
            }
            if (loopcount < 2){ ; Make sure mouse does not move out of inv in last loop
                MouseMove, 40, 0, 0, R ;Move over 1 row
            }
            Click
        }
        Send {Shift up}
    Return