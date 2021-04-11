!1::Reload

!2::ExitApp

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 20
    Random, ySway, 0, 20

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

1::
    while(1) {
        square := createsquare(583,675) ; Click anvil
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 13125, 14320 ; Sleep time till reheat
        Sleep, %rand%
    }