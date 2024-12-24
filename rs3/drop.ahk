!Esc::
ExitApp
return

F1::Reload


sleep_random(min,max) {
	Random, rand, %min%, %max%
	sleep %rand%
}
; invent has 4 columns
; 4x7
; Dont drop first x slots
; Set point on first invent slot
drop_4column(x) {
    row := 7 - x
    skip := 44 * x

    }


; invent has 4 rows
; 3x8 + 1x4
; Dont drop first x slots
; Set point on first invent slot
drop_4row(x) {
    row := 7 - x
    skip := 44 * x
    
    MouseMove, skip, 0, 3, R ;Move over x column
    click
    loop, %row% {
        MouseMove, 44, 0, 3, R ;Move over x column
        click
    }
    MouseMove, 0, 36, 3, R ;Move down 1 row
    click
    loop, 7 {
        MouseMove, -44, 0, 3, R ;Move over x column
        click
    }
    MouseMove, 0, 36, 3, R ;Move down 1 row
    click
    loop, 7 {
        MouseMove, 44, 0, 3, R ;Move over x column
        click
    }
    ; MouseMove, 0, 36, 3, R ;Move down 1 row
    skip := 44*4
    MouseMove, -skip, 36, 3, R ;Move down 1 row
    click
    loop, 3 {
        MouseMove, -44, 0, 3, R ;Move over x column
        click
    }
    return
}





Numpad4::    
    sleep_random(250,450)
    Send {Shift down}
    drop_4row(1)
    Send {Shift up}
