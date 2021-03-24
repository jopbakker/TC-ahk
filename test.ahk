!1::Reload

!2::ExitApp

1::
    loopcount = 0
    number = 0
    loop, 7 {
        loopcount++
        number = 1
        if(number = 1){
            number = 0
            Click
            MouseMove, 36, 0, %speed%, R
            Click
        }
        if (loopcount < 7){
            MouseMove, -36, 36, %speed%, R
        }
    }
    MouseMove, 87, 0, %speed%, R
    loopcount = 0
    loop, 7 {
        loopcount++
        number = 1
        if(number = 1){
            number = 0
            Click
            MouseMove, -36, 0, %speed%, R
            Click
        }
        if (loopcount < 7){
            MouseMove, 36, -36, %speed%, R
        }
    }
Return

inventloop(){
    Click
    ; Loop through inventory and click all items
    speed := 1
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
}