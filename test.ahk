createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 25
    xpos += %xSway%
    Random, ySway, 0, 25
    ypos += %ySway%
    square := {x: xpos, y: ypos}
    return square
}

1::
    test := createsquare(0,0)
    MsgBox, % test.x "," test.y