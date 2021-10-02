#Include main.ahk

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
    Send {Shift down}
    click_points(points3)
    Send {Shift up}
    Return

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