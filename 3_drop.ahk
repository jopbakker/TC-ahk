#Include main.ahk

; X clicks all points of that color
; CTRL + X sets a point of color
; ALT + X removes all points of color
; F5 removed the "overlay"
; You can change the functions to lclick, rclick and move
; Point click have optional speed and delay options
    ; i.e. lclick_points(points1,, 500) sets delay to 500 but leaves speed default


1::
lclick_points(points1,50,5000,True,50,6000)
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


;-------------- Set size --------------;
^1::
hoverColor := "Red"
add_point(points1, "Red", 50, 50)
return

^2::
hoverColor := "Blue"
add_point(points2, "Blue", 50, 50)
return

^3::
hoverColor := "Green"
add_point(points3, "Green", 25, 25)
return

^4::
hoverColor := "Yellow"
add_point(points4, "Yellow", 25, 25)
return