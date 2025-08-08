#Include main.ahk

; X clicks all points of that color
; CTRL + X sets a point of color
; ALT + X removes all points of color
; F5 removed the "overlay"
; You can change the functions to lclick, rclick and move
; The functions have optional fiels with default values
    ; (ByRef points, speed:=6, delay:=50, rand:=False, rlow:=0, rhigh:=0)
    ; i.e. lclick_points(points1,,,True,200,500) sets a random delay between 200 en 500 ms for every point
; Size of square can be set at the bottom of the script. This size is for all squares of that color

1::
    lclick_points(points1)
    return

2::
    lclick_points(points2)
    return

3::
    lclick_points(points3)
    return

4::
    lclick_points(points4)
    return

5::
    lclick_points(points5)
    return

6::
    lclick_points(points6)
    return



;-------------- Set size --------------;
^1::
    hoverColor := "Red"
    add_point(points1, "Red", 25, 25)
    return

^2::
    hoverColor := "Blue"
    add_point(points2, "Blue", 25, 25)
    return

^3::
    hoverColor := "Green"
    add_point(points3, "Green", 25, 25)
    return

^4::
    hoverColor := "Yellow"
    add_point(points4, "Yellow", 25, 25)
    return

^5::
    hoverColor := "Purple"
    add_point(points5, "Purple", 25, 25)
    return

^6::
    hoverColor := "Black"
    add_point(points6, "Black", 25, 25)
    return