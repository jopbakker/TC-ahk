!1::Reload

!2::ExitApp

variables() {
    ; Variables
    Random, bankclose, 1550, 1750 ; Set sleep for after selecting preset
    Random, bankopen, 1011, 1105 ; Set new random sleep
    Random, crafteropen, 1678, 1955 ; Set sleep for after opening crafter

    ; Items
    Random, potionfull, 17235, 18124 ; Set new random sleep
    Random, leather, 11000, 12356 ; Set new random sleep
    Random, fletchbow, 55870, 57125 ; Set new random sleep
    Random, cook, 68000, 69144 ; Set new random sleep
    Random, flatpack_4, 33150, 34686 ; Set new random sleep

    ; locations
    Crafter := createsquare(515,155) ; Crafter
    Bank := createsquare(778,505) ; Click bank chest (west)

    variables := {bankclose: bankclose, bankopen: bankopen, crafteropen: crafteropen, potionfull: potionfull, leather: leather, fletchbow: fletchbow, cook: cook, flatpack_4: flatpack_4, CrafterX: Crafter.x, CrafterY: Crafter.y, BankX: Bank.x, BankY: Bank.y}
    return variables
}

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 20
    Random, ySway, 0, 20

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

; Set screen so bank is to the north
1::
    while(1) {
        variables := variables()
        Send, {f10} ; Extract preset 10
        Sleep, variables.bankclose

        MouseMove, variables.CrafterX, variables.CrafterY, 4
        click

        Sleep, variables.crafteropen

        Send, {space} ; Start crafting

        Sleep, variables.flatpack_4

        MouseMove, variables.BankX, variables.BankY, 4
        click

        Sleep, variables.crafteropen
    }