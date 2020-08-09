#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Other combinations should not enable #
CapsLock::#

; Shortcuts
# & j::Left
# & l::Right
# & i::Up
# & k::Down
# & u::PgUp
# & o::PgDn
# & h::Home
# & ö::End
# & s::Shift
# & d::Alt
# & q::^z
# & w::^+z
# & Space::LCtrl

; English Keyboard
RAlt & y:: Send <
RAlt & x:: Send >
RAlt & ä:: Send '


; CTRL + WIN +LEFT 
# & r::
Send, {LWin Down}{LCtrl Down}
Sleep, 10
Send, {Left}
Send, {LWin Up}{LCtrl Up}
return

; CTRL + WIN +RIGHT 
# & t::
Send, {LWin Down}{LCtrl Down}
Sleep, 10
Send, {Right}
Send, {LWin Up}{LCtrl Up}
return 


Return

