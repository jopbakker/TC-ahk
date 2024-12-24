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


; do_random_activity(){
;     rand := Random(1, 4)
;     swtich {
;         case rand == 1:
;             ; do stuff
;         case rand == 2:
;             ; do stuff
;         case rand == 3:
;             ; do stuff
;         case rand == 4:
;             ; do stuff
;         default:
;             ; do stuff
;     }

; }


; Forge/Anvil items
; Set ^1 on spot
; Set ^2 on banknote
Numpad4::
    toggle := !toggle
    countloop = 0
    while (toggle && countloop < 10000) {
        lclick_points(points1,5,,True,200,500)
        sleep_random(30000,75000)
    }
    return


;-------------- Set size --------------;
^1::
    hoverColor := "Red"
    add_point(points1, "Red", 32, 32)
    return

^2::
    hoverColor := "Blue"
    add_point(points2, "Blue", 32, 32)
    return

^3::
    hoverColor := "Green"
    add_point(points3, "Green", 25, 25)
    return