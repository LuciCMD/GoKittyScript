#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.0
 Author: Luci

 Script Function:
	Keep mouse active.

#ce ----------------------------------------------------------------------------

#include <AutoItConstants.au3>

Global $FreezeKitty = False

HotKeySet("{BACKSPACE}", "TogglePause") 
HotKeySet("{ESCAPE}", "Terminate")
ToolTip("Inactive - Press Backspace to Activate", 100, 100, "Clicker Status", 1, 4)

While $FreezeKitty = $FreezeKitty
	    Local $KittyPos = MouseGetPos()
		Sleep(175)
WEnd

Func TogglePause() 
	$FreezeKitty = Not $FreezeKitty
	ToolTip("Inactive - Press Backspace to Activate", 100, 100, "Clicker Status", 1, 4)
	While $FreezeKitty
		ToolTip("Active - Press Backspace to Deactivate", 100, 100, "Clicker Status", 1, 4)
		MouseMove($KittyPos[0], $KittyPos[1])
		Sleep(500)
		MouseMove($KittyPos[0] + 50, $KittyPos[1])
		Sleep (500)
		MouseClick($MOUSE_CLICK_LEFT)
		Sleep(500)
	WEnd
	EndFunc

Func Terminate()
        Exit
EndFunc   ;==>Terminate



