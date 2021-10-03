#Include main.ahk

; X clicks all points of that color
; CTRL + X sets a point of color
; ALT + X removes all points of color
; F5 removed the "overlay"
; You can change the functions to lclick, rclick and move
; Point click have optional speed and delay options
    ; i.e. lclick_points(points1,, 500) sets delay to 500 but leaves speed default


1::
lclick_points(points1)
return

2::
lclick_points(points2)
return

3::
    Send {Shift down}
    lclick_points(points3)
    Send {Shift up}
    Return

4::
lclick_points(points4)
return