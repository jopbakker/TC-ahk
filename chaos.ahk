!1::Reload ; Alt + 1

!2::ExitApp ; Alt + 2

clickChaosAltar() {
    Random, rand, 200, 450 ; Set new random sleep
    chaos_xpos :=
    chaos_ypos :=
    
    MouseMove, chaos_xpos, chaos_ypos
    Sleep, %rand% 
    Click
}

searchSquare(xpos, ypos, xpos_end, ypos_end, itemColor) {
    ; Check if color (with variation of 20) exists in square
    PixelSearch, OutputVarX, OutputVarY, xpos, ypos, xpos_end, ypos_end, itemColor, 20, Fast RGB
    if ErrorLevel {
        return
    } else {
        ; If color does not match itemColor+-20 drop item
        MouseMove, OutputVarX, OutputVarY
        Click
        
        clickChaosAltar()
    }
}

createSquare() {
    ; Create square from start position
    MouseGetPos, xpos, ypos
    itemColor := 0xE1DDDC ; Some shaded white color for cake topping
    xpos_end := xpos + 18
    ypos_end := ypos + 18
    searchSquare(xpos, ypos, xpos_end, ypos_end, itemColor)
}

; Rebind key's only while in RuneLite
#IfWinActive, ahk_exe RuneLite.exe
    1::
        ; Loop through inventory and drop any items that are not cakes
        loop, 2{
            loopcount++
            loop, 6 { ;Loop first row
                MouseMove, 0, 36, %speed%, R
                createSquare()
            }
            MouseMove, 40, 0, %speed%, R ;Move over 1 row
            createSquare()
            loop, 6 { ;Loop back up
                MouseMove, 0, -36, %speed%, R
                createSquare()
            }
            if (loopcount < 2){ ; Make sure mouse does not move out of inv in last loop
                MouseMove, 40, 0, %speed%, R ;Move over 1 row
            }
            createSquare()
        }
    Return