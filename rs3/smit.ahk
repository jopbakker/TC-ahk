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


; Forge/Anvil items
Numpad4:: ;Set ^1 on anvil and ^2 on forge
    toggle := !toggle
    countloop = 0
    while (toggle && countloop < 10000) {
        lclick_points(points1,,,True,300,600)
        sleep_random(20000, 25000)
        lclick_points(points2)
        sleep_random(1500, 3000)
    }
    countloop++
    return



;-------------- Set size --------------;
^1::
    hoverColor := "Red"
    add_point(points1, "Red", 37, 37)
    return

^2::
    hoverColor := "Blue"
    add_point(points2, "Blue", 37, 37)
    return

^3::
    hoverColor := "Green"
    add_point(points3, "Green", 25, 25)
    return