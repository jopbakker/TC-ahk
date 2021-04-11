!1::Reload

!2::ExitApp

sleeptimes() {
    ; Variables
    Random, bankclose, 1550, 1750 ; Set sleep for after selecting preset
    Random, bankopen, 1000, 5000 ; Set new random sleep
    Random, crafteropen, 1000, 1250 ; Set sleep for after opening crafter

    ; Items
    Random, potionfull, 17235, 18124 ; Set new random sleep

    sleeptimer := {bankclose: bankclose, bankopen: bankopen, crafteropen: crafteropen, potionfull: potionfull}
    return sleeptimer
}

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 300
    Random, ySway, 0, 300

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

1:: 
    while(1) {
        sleeptimer := sleeptimes()
        Sleep, sleeptimer.bankopen

        square := createsquare(815,493)
        MouseMove, square.x, square.y, 4

    }