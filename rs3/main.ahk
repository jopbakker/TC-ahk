#NoEnv
SetWorkingDir %A_ScriptDir%
;SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
;SetControlDelay 1
;SetWinDelay 0
;SetKeyDelay -1
;SetMouseDelay 1
;SetDefaultMouseSpeed, 3
SetBatchLines -1
CoordMode, mouse, Screen

start_script()
display := True

guiCount:=1
hoverColor := "Red"
SetTimer, hover, 1
return

F5::
display := !display
if (!display) {
	hide_gui()
} else {
	display_gui()
}
return

hover:
if (display) {
	MouseGetPos, currx, curry
	overlay_rect(currx, curry, width, height, 3, hoverColor, False)
}
return

!Esc::
ExitApp
return

F1::Reload

!1::
clear_points(points1)
return

!2::
clear_points(points2)
return

!3::
clear_points(points3)
return

!4::
clear_points(points4)
return

!5::
clear_points(points5)
return

!6::
clear_points(points6)
return


clear_points(ByRef points) {
	For index, p In points
	{
		num := p.gui
		Gui %num%: Destroy
	}
	points := []
}

add_point(ByRef points, color, width, height) {
	global guiCount
	MouseGetPos, currx, curry
	num := overlay_rect(currx, curry, width, height, 3, color)
	x1 := % currx - width/2
	x2 := % currx + width/2
	y1 := % curry - height/2
	y2 := % curry + height/2
	points.push({"x1":x1,"y1":y1,"x2":x2,"y2":y2,"gui":num})
	
}

lclick_points(ByRef points, speed:=6, delay:=50, rand:=False, rlow:=0, rhigh:=0) {
	;MouseGetPos, currx, curry
	For index, p In points{
		if (rand){
			Random, delay, %rlow%, %rhigh%
		}
		lclick_box(p.x1, p.y1, p.x2, p.y2, speed)
		Sleep, %delay%
	}
	;MouseMove currx, curry
}

rclick_points(ByRef points, speed:=6, delay:=50, rand:=False, rlow:=0, rhigh:=0) {
	;MouseGetPos, currx, curry
	For index, p In points{
		if (rand){
			Random, delay, %rlow%, %rhigh%
		}
		rclick_box(p.x1, p.y1, p.x2, p.y2, speed)
		Sleep, %delay%
	}
	;MouseMove currx, curry
}

move_points(ByRef points, speed:=6, delay:=50, rand:=False, rlow:=0, rhigh:=0) {
	;MouseGetPos, currx, curry
	For index, p In points{
		if (rand){
			Random, delay, %rlow%, %rhigh%
		}
		move_box(p.x1, p.y1, p.x2, p.y2, speed)
		Sleep, %delay%
	}
	;MouseMove currx, curry
}

overlay_rect(X:=0, Y:=0, W:=0, H:=0, T:=3, cc:="Red", incr:=True) {
	global guiCount
	X -= W/2
	Y -= H/2
	w2:=W-T
	h2:=H-T
	txt := abs(mod(guiCount,99)+1)
	Gui %txt%: +LastFound +AlwaysOnTop -Caption +ToolWindow +E0x08000000 +E0x80020
	Gui %txt%: Color, %cc%
	Gui %txt%: Show, w%W% h%H% x%X% y%Y% NA

	WinSet, Transparent, 150
	WinSet, Region, 0-0 %W%-0 %W%-%H% 0-%H% 0-0 %T%-%T% %w2%-%T% %w2%-%h2% %T%-%h2% %T%-%T%
	if (incr) {
		guiCount += 1  
	}
	return txt
}

hide_gui() {
	loop, 99 {
		Gui %A_Index%: Hide
	}
}

display_gui() {
	loop, 99 {
		Gui %A_Index%: +LastFound +AlwaysOnTop -Caption +ToolWindow +E0x08000000 +E0x80020
		Gui %A_Index%: Show
	}
}

start_script() {
	global width,height,points1,points2,points3,points4,points5,points6
	points1 := []
	points2 := []
	points3 := []
	points4 := []
	points5 := []
	points6 := []
	width:=37
	height:=37
}

lclick_box(x1, y1, x2, y2, speed) {
	x += target_random(x1,(x1+x2)/2,x2)
	y += target_random(y1,(y1+y2)/2,y2)
	MouseMove, %x%, %y%, %speed%
	MouseClick, Left
}

rclick_box(x1, y1, x2, y2, speed) {
	x += target_random(x1,(x1+x2)/2,x2)
	y += target_random(y1,(y1+y2)/2,y2)
	MouseMove, %x%, %y%, %speed%
	MouseClick, Right
}

move_box(x1, y1, x2, y2,speed) {
	x += target_random(x1,(x1+x2)/2,x2)
	y += target_random(y1,(y1+y2)/2,y2)
	MouseMove, %x%, %y%, %speed%
}


sleep_random(min,max) {
	Random, rand, %min%, %max%
	sleep %rand%
}

format_timer(secs) {
	time = 20000101
	time += %secs%, seconds
	FormatTime, mmss, %time%, HH:mm:ss
	return mmss
}

rand_range(min,max){
    Random, r, min, max
    return r
	}

; shows timer
; sleep_random(min,max) {
; 	initSecs := rand_range(min,max)
; 	Gui, 99:+AlwaysOnTop	
; 	Gui, 99:font,s20 bold,Verdana
; 	Gui, 99:+Caption +Border -sysmenu
; 	Gui, 99:add, text, x10 y10 w150 h30 center gAdd , %initSecs%
; 	Gui, 99:Show,x500 yCenter,Sleep time left
; 	GuiControl,99:,Static1,%initSecs%

; 	Add:
; 	loop % initSecs-1 {		
; 		GuiControl,99:,Static1,% format_timer(--initSecs)
; 		sleep, 1000
; 	}
; 	Gui, 99:Destroy
; }

target_random(min, target, max){
	Random, lower, min, target
	Random, upper, target, max
	Random, weighted, lower, upper
	Return, weighted
}