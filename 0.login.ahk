#UseHook, On

GroupAdd, activewindow, ahk_exe RuneLite.exe
GroupAdd, activewindow, ahk_exe OpenOSRS.exe
#IfWinActive, ahk_group activewindow
    1:: ;Plebniek
        Send, n.bovee@st.hanze.nl ; Send username
        sleep 500
        Send {Enter}
        Send, zgAwVXWaWSS69Qry ; Send password
        sleep 500
        Send {Enter}
    ExitApp

    2:: ;{username}
        Send, jop.rs.group@gmail.com ; Send username
        sleep 500
        Send {Enter}
        Send, qwer1234 ; Send password
        sleep 500
        Send {Enter}
    ExitApp