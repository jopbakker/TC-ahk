; All below "scripts" start from the CURRENT mouse position

GroupAdd, activewindow, ahk_exe RuneLite.exe
GroupAdd, activewindow, ahk_exe OpenOSRS.exe
#IfWinActive, ahk_group activewindow
    speed := 0
    1::
        loopcount = 0
        Click
        ; Loop through inventory and click all items
        loop, 2{
            loopcount++
            loop, 6 { ;Loop first row
                MouseMove, 0, 36, %speed%, R
                Click
            }
            MouseMove, 40, 0, %speed%, R ;Move over 1 row
            Click
            loop, 6 { ;Loop back up
                MouseMove, 0, -36, %speed%, R
                Click
            }
            if (loopcount < 2){ ; Make sure mouse does not move out of inv in last loop
                MouseMove, 40, 0, %speed%, R ;Move over 1 row
            }
            Click
        }
    Return

    2::
        loopcount = 0
        Click
        ; Loop through inventory and click all items but the bottom row
        loop, 2{
            loopcount++
            loop, 5 { ;Loop first row
                MouseMove, 0, 36, %speed%, R
                Click
            }
            MouseMove, 40, 0, %speed%, R ;Move over 1 row
            Click
            loop, 5 { ;Loop back up
                MouseMove, 0, -36, %speed%, R
                Click
            }
            if (loopcount < 2){ ; Make sure mouse does not move out of inv in last loop
                MouseMove, 40, 0, %speed%, R ;Move over 1 row
            }
            Click
        }
    Return

    3::
        loopcount = 0
        ; Loop through inventory and drop all items
        Send {Shift down}
        Click
        loop, 2{
            loopcount++
            loop, 6 { ;Loop first row
                MouseMove, 0, 36, %speed%, R
                Click
            }
            MouseMove, 40, 0, %speed%, R ;Move over 1 row
            Click
            loop, 6 { ;Loop back up
                MouseMove, 0, -36, %speed%, R
                Click
            }
            if (loopcount < 2){ ; Make sure mouse does not move out of inv in last loop
                MouseMove, 40, 0, %speed%, R ;Move over 1 row
            }
            Click
        }
        Send {Shift up}
    Return

    4::
        loopcount = 0
        ; Loop through inventory and drop all items but the bottom row
        Send {Shift down}
        Click
        loop, 2{
            loopcount++
            loop, 5 { ;Loop first row
                MouseMove, 0, 36, %speed%, R
                Click
            }
            MouseMove, 40, 0, %speed%, R ;Move over 1 row
            Click
            loop, 5 { ;Loop back up
                MouseMove, 0, -36, %speed%, R
                Click
            }
            if (loopcount < 2){ ; Make sure mouse does not move out of inv in last loop
                MouseMove, 40, 0, %speed%, R ;Move over 1 row
            }
            Click
        }
        Send {Shift up}
    Return