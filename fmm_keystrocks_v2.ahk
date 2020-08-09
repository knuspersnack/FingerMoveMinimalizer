keepCapsLockLoopRunning := false
SetCapsLockState, AlwaysOff

~CapsLock::
	keepCapsLockLoopRunning := true ;
	
	loop {
		Input, variable, L1, {LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{AppsKey}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Pause}
		if (variable = "j") {
			if(GetKeyState("CapsLock","P")){
				Send, {Left}
			} else {
				Send, {j}
				Break
			}
		}
		else if (variable = "l") 
		{
			if(GetKeyState("CapsLock","P")){
				Send, {Right}
			} else {
				Send, {l}
				Break
			}
		}
		else if (variable = "i") 
		{
			if(GetKeyState("CapsLock","P")){
				Send, {Up}
			} else {
				Send, {i}
				Break
			}
		}
		else if (variable = "k") 
		{
			if(GetKeyState("CapsLock","P")){
				Send, {Down}
			} else {
				Send, {k}
				Break
			}
		}
		else if (variable = "u") 
		{
			if(GetKeyState("CapsLock","P")){
				Send, {PgUp}
			} else {
				Send, {u}
				Break
			}
		}
		else if (variable = "o") 
		{
			if(GetKeyState("CapsLock","P")){
				Send, {PgDn}
			} else {
				Send, {o}
				Break
			}
		}
		else if (variable = "h") 
		{
			if(GetKeyState("CapsLock","P")){
				Send, {Home}
			} else {
				Send, {h}
				Break
			}
		}
		else if (variable = "ö") 
		{
			if(GetKeyState("CapsLock","P")){
				Send, {End}
			} else {
				Send, {ö}
				Break
			}
		}
		else if (variable = "d") 
		{
			if(GetKeyState("CapsLock","P")){
				Send, {Alt}
			} else {
				Send, {d}
				Break
			}
		}
		else if (variable = "q") 
		{
			Send, {LCtrl Down}{z}
			Send, {LCtrl Up}
			if(GetKeyState("CapsLock","P")){
				Send, {LCtrl Down}{z}
				Send, {LCtrl Up}
			} else {
				Send, {q}
				Break
			}
		}
		else if (variable = "w") 
		{
			if(GetKeyState("CapsLock","P")){
				Send, {LCtrl Down}{Shift Down}{z}
				Send, {LCtrl Up}{Shift Up}
			} else {
				Send, {w}
				Break
			}
		}
		else if (variable = "r") ; CTRL + WIN +LEFT 
		{
			if(GetKeyState("CapsLock","P")){
				Send, {LWin Down}{LCtrl Down}
				Sleep, 10
				Send, {Left}
				Send, {LWin Up}{LCtrl Up}
			} else {
				Send, {r}
				Break
			}
		}
		else if (variable = "t") ; CTRL + WIN + RIGHT 
		{
			if(GetKeyState("CapsLock","P")){
				Send, {LWin Down}{LCtrl Down}
				Sleep, 10
				Send, {Right}
				Send, {LWin Up}{LCtrl Up}
			} else {
				Send, {r}
				Break
			}
		}
		else if(keepCapsLockLoopRunning = false){
			Break ; 
		} 
		else 
		{
			if(!GetKeyState("CapsLock","P")){
				Send, {%variable%} 
			}
			
		}
	}
	return
	
~CapsLock up::
	keepCapsLockLoopRunning := false ;
	Sleep, 100 ;
	Send, {CapsLock up} ;
	return

Return
	


