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


; create unf pots
; unnote 12
; Place "1" on water, banknote, herb, banknote, herb, vial
; Place "2" on unf pot banknote
Numpad4::
    toggle := !toggle
    countloop = 0
    while (toggle && countloop < 10000) {
        lclick_points(points1,2,20,True,180,230)
        sleep_random(400, 511)
        Send, {space}
        sleep_random(1350, 2000)
        lclick_points(points2,2,20,True,180,230)
        countloop++
    }
    return



; ; cleam herbs
; ; unnote 99
; ; Place "1" on grimy herb, bank note
; ; Place "2" on herb
; ; Place "3" on herb, bank note
; Numpad4::
;     toggle := !toggle
;     countloop = 0
;     while (toggle && countloop < 10000) {
;         lclick_points(points1,2,50,True,180,255)
;         sleep_random(350, 511)
;         lclick_points(points2,2,50,True,180,255)
;         sleep_random(350, 511)
;         lclick_points(points3,2,50,True,180,255)

;     }
;     return


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