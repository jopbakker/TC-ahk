#Include main.ahk

; X clicks all points of that color
; CTRL + X sets a point of color
; ALT + X removes all points of color

1::
click_points(points1)
return

^1::
hoverColor := "Red"
add_point(points1, "Red")
return

!1::
clear_points(points1)
return


2::
click_points(points2)
return

^2::
hoverColor := "Blue"
add_point(points2, "Blue")
return

!2::
clear_points(points2)
return


3::
click_points(points3)
return

^3::
hoverColor := "Green"
add_point(points3, "Green")
return

!3::
clear_points(points3)
return


4::
click_points(points4)
return

^4::
hoverColor := "Yellow"
add_point(points4, "Yellow")
return

!4::
clear_points(points4)
return

5::
click_points(points5)
return

^5::
hoverColor := "Purple"
add_point(points5, "Purple")
return

!5::
clear_points(points5)
return

6::
click_points(points6)
return

^6::
hoverColor := "Black"
add_point(points6, "Black")
return

!6::
clear_points(points6)
return