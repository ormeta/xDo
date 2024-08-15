#include <Misc.au3>
#include <Constants.au3>
#include <File.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>

#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
;
; AutoIt Version: 3.0
; Language:       English
; Platform:       Win9x/NT
; Author:         Ormar Dalsgaard
; Modified:       
;
; Script Function:
;   Helpdesk macrOS.
;   


If _Singleton("test", 1) = 0 Then
        MsgBox($MB_SYSTEMMODAL, "Warning", "An occurrence of xDo is already running")
		
        Exit
EndIf
;MsgBox($MB_SYSTEMMODAL, "OK", "the first occurrence of test is running")


Func Icon()
	TraySetIcon("C:\Users\ormardalsgaard\OneDrive - Facebook\Documents\AutoIt\icons\imageedit_1_9983586535.ico")
EndFunc

Icon()

Func _Start()
	$aCoords = WinGetPos("[CLASS:Chrome_WidgetWin_1]")
	_MouseTrap($aCoords[0], $aCoords[1], $aCoords[0] + $aCoords[2], $aCoords[1] + $aCoords[3])
	
	ClipPut("Something was automated.")
	WinActivate("[TITLE:Helpdesk Queue - Google Chrome]", "")
	Send($title)
	Sleep(1000)
	Send("{TAB}")
	Sleep(100)
	Send("{TAB}")
	Sleep(100)
	Send("{d}")
	;Send("{UP}")
	;Sleep(100)
	;Send("{UP}")
	Sleep(100)
	Send("{TAB}")
	Sleep(100)
	Send("{TAB}")
	Sleep(100)
	;Send("{TAB}")
	;Sleep(100)
EndFunc



_xDo()
Exit
; Finished!
Func _xDo()

	$line = 1
		
While 1
		Sleep(100)
		$sClipboard = ClipGet() 
		
		;If $sClip == "xDo" Then
			;$sText = InputBox("AutoIt Example", "So far, we have Soft, Hard and Info, Acce, ")
						
			Switch $sClipboard
				Case "thank"
					ClipPut("Thanked.")
					Sleep(500)
					Send("thanks for contacting the Helpdesk today, glad I could help you with the issue at hand, please open fburl.com/hdwp if you require any more help{TAB}{TAB}{TAB}{TAB}")
					
				Case "odn"
					Global $title = "Monitor setup"
					_Start()
					
					;Local $sComboRead = ""
						$tracker = "C:\Users\ormardalsgaard\OneDrive - Facebook\Documents\odn3tracker.txt"
						$asset = FileReadLine($tracker, $line)
						$line = $line + 1
						$location = FileReadLine($tracker, $line)
						$line = $line + 1
							
							Send("Monitor setup - " & $location & " - " & $asset & "{TAB}{ENTER}")							
							
							$continue = MsgBox(4100, "Continue ?", "Continue with Deskside support?")
							If $continue == 6 Then ;6=yes, 7=no
							MouseClick("left",1700, 860)	;Click Deskside support
								$next = MsgBox(4100, "Continue ?", "Click Make selection ?")
							MouseClick("left",1720, 910)	;Click Make Incident or Service
							Sleep(2000)
							MouseClick("left",1740, 1000) ;Click Service
								Sleep(2000)
							MouseClick("left",1976, 979)   ;Click Manual Search
							Sleep(1000)
							MouseClick("left",1920, 984)   ;Click Asset Selector
							Sleep(1000)
								send($asset)
								Sleep(500)
								Send("{ENTER}")
								Sleep(500)			;next = MsgBox(4100, "Continue ?", "2x TAB and paste description ?")
								Send("{TAB}{TAB}")
								Send("Monitor to desk deployment")
								Send("{TAB}")
								Send("Deployed monitor{ENTER}Connected:{ENTER}+ Power cable{ENTER}+ HDMI cable")
								Send("{TAB}{SPACE}")
								;MouseClick("left",1693, 1102)	;Click complete workflow
								;$next = MsgBox(4100, "Continue ?", "Next ?")
								Sleep(500) 								
								Send("{TAB}{TAB}{TAB}{TAB}")	;$next = MsgBox(4100, "Continue ?", "4x TAB and complete ?")
								Sleep(500) 								
								Send("{ENTER}")

							Else
							EndIf
							
							MouseWheel($MOUSE_WHEEL_UP, 40)
							MouseClick("left",2107, 159)
							MsgBox(4100, "Yes ?", "Full head onwards ?")
							MouseClick("left",1809, 238)
							Sleep(500)
							ClipPut("odn")
							
							
					;	Case Else
							;GUIDelete($hGUI)
							;ExitLoop
					;	EndSwitch
					Case "retu"
					Global $title = "Asset return"
					_Start()
					
			;		; Create a GUI with various controls.
			;		Local $hGUI = GUICreate("xDo", 300, 200)
			;
			;		; Create a combobox control.
			;		Local $subCatagory = GUICtrlCreateCombo("Laptop - Windows", 10, 10, 185, 20)
			;		Local $model = GUICtrlCreateCombo("Exact Model", 10, 40, 185,	 20)
			;		Local $issue = GUICtrlCreateCombo("Terminated Asset Tag", 10, 70, 200, 20)
			;		Local $idButton_Close = GUICtrlCreateButton("Close", 210, 170, 85, 25)
			;
			;		; Add additional items to the combobox.
			;		GUICtrlSetData($subCatagory, "Desktop - Windows|Laptop - MAC|Factops|Mobile Device - Android|Mobile Device - iPad|Mobile Device - iPhone", "Laptop Windows")
			;		GUICtrlSetData($model, "Windows Lenovo|Samsung / Google Pixel|iPad mini / full", "Exact Model")
			;		GUICtrlSetData($issue, "Replacement Asset Tag|No longer needed Asset Tag|same as laptops above Asset Tag","Terminated Asset Tag")
			;
			;		; Display the GUI.
			;		GUISetState(@SW_SHOW, $hGUI)
			;
					;Local $sComboRead = ""
			
					; Loop until the user exits.
			;		While 1
			;				Switch GUIGetMsg()
			;						Case $GUI_EVENT_CLOSE, $idButton_Close
			;							;If (GUICtrlRead($model)) = "Mention the exact Model" Then
			;							;	$model = InputBox("Model", "Input exact model", "T490s")
			;							;Else
			;							;	$model = GUICtrlRead($model)
			;							;EndIf
			;							$sComboRead = GUICtrlRead($subCatagory) & " - " & GUICtrlRead($model) & " - " & GUICtrlRead($issue)
			;							FileWriteLine("C:\Users\ormardalsgaard\Documents\AutoIt\hist.txt", $sComboRead)
			;							ExitLoop
			;
;       	;		                 Case $subCatagory
			;								
;       	;		                         MsgBox($MB_SYSTEMMODAL, "", "The combobox is currently displaying: " & $sComboRead, 0, $hGUI)
			;
			;				EndSwitch
			;		WEnd
			;		;$comboReturn = MsgBox(4, "Just do it!", $sComboRead)
			;		;Switch $comboReturn
			;		;	Case 6
			;				GUIDelete($hGUI)
			;				Sleep(100)
							$tag = InputBox("Asset tag?","ITxxxxxx", "IT")
							Send($tag & " - General question - Asset return - Provided wiki link and or gave information" & "{TAB}{ENTER}")
							
							;GUI ENDAR
							
							
							$continue = MsgBox(4100, "Continue ?", "Continue with Asset Return workflow ?")
							;MSGBOX DEBUGGER MsgBox(4096,"1",$continue)
							If $continue == 6 Then ;6=yes, 7=no
								MouseClick("left",1700, 863)	;Click workflow
								$next = MsgBox(4100, "Continue ?", "Click Make selection ?")
								MouseClick("left",1720, 1235)	;Click Asset selector
								Sleep(1000)
								send($tag)
								Sleep(500)
								send("{ENTER}")
								sleep(500)
								MouseClick("left",1720, 1311)	;Click Return reason
								;$next = MsgBox(4100, "Continue ?", "2x TAB and paste link ?")
								;Sleep(1000)
								;Send("{TAB}")
								;Send("https://www.internalfb.com/butterfly/form/443436246616513{TAB}{SPACE}")
								;$next = MsgBox(4100, "Continue ?", "4x TAB and complete ?")
								;MouseClick("left",1693, 1102)	;Click complete workflow
								;$next = MsgBox(4100, "Continue ?", "Next ?")
								;Send("{TAB}{TAB}{TAB}{TAB}{ENTER}")
								;MsgBox(0, "Case", "Completed!", 5)
							Else
									;End if
							EndIf
					;	Case Else
							;GUIDelete($hGUI)
							;ExitLoop
					;	EndSwitch
					Case "prin"
					Global $title = "Printing request"
					_Start()
					
			;		; Create a GUI with various controls.
			;		Local $hGUI = GUICreate("xDo", 300, 200)
			;
			;		; Create a combobox control.
			;		Local $subCatagory = GUICtrlCreateCombo("Laptop - Windows", 10, 10, 185, 20)
			;		Local $model = GUICtrlCreateCombo("Exact Model", 10, 40, 185,	 20)
			;		Local $issue = GUICtrlCreateCombo("Terminated Asset Tag", 10, 70, 200, 20)
			;		Local $idButton_Close = GUICtrlCreateButton("Close", 210, 170, 85, 25)
			;
			;		; Add additional items to the combobox.
			;		GUICtrlSetData($subCatagory, "Desktop - Windows|Laptop - MAC|Factops|Mobile Device - Android|Mobile Device - iPad|Mobile Device - iPhone", "Laptop Windows")
			;		GUICtrlSetData($model, "Windows Lenovo|Samsung / Google Pixel|iPad mini / full", "Exact Model")
			;		GUICtrlSetData($issue, "Replacement Asset Tag|No longer needed Asset Tag|same as laptops above Asset Tag","Terminated Asset Tag")
			;
			;		; Display the GUI.
			;		GUISetState(@SW_SHOW, $hGUI)
			;
					Local $sComboRead = ""
			
					; Loop until the user exits.
			;		While 1
			;				Switch GUIGetMsg()
			;						Case $GUI_EVENT_CLOSE, $idButton_Close
			;							;If (GUICtrlRead($model)) = "Mention the exact Model" Then
			;							;	$model = InputBox("Model", "Input exact model", "T490s")
			;							;Else
			;							;	$model = GUICtrlRead($model)
			;							;EndIf
			;							$sComboRead = GUICtrlRead($subCatagory) & " - " & GUICtrlRead($model) & " - " & GUICtrlRead($issue)
			;							FileWriteLine("C:\Users\ormardalsgaard\Documents\AutoIt\hist.txt", $sComboRead)
			;							ExitLoop
			;
;       	;		                 Case $subCatagory
			;								
;       	;		                         MsgBox($MB_SYSTEMMODAL, "", "The combobox is currently displaying: " & $sComboRead, 0, $hGUI)
			;
			;				EndSwitch
			;		WEnd
			;		;$comboReturn = MsgBox(4, "Just do it!", $sComboRead)
			;		;Switch $comboReturn
			;		;	Case 6
			;				GUIDelete($hGUI)
			;				Sleep(100)
							Send("Informational - Printing request - Provided wiki link and or gave information" & "{TAB}{ENTER}")
							
							;GUI ENDAR
							
							
							$continue = MsgBox(4100, "Continue ?", "Continue with printing assistance ?")
							;MSGBOX DEBUGGER MsgBox(4096,"1",$continue)
							If $continue == 6 Then ;6=yes, 7=no
								MouseClick("left",1677, 860)	;Click workflow
								$next = MsgBox(4100, "Continue ?", "Click Make selection ?")
								MouseClick("left",1702, 922)	;Click Make selection
								send("prin")
								Sleep(1000)
								send("{ENTER}")
								$next = MsgBox(4100, "Continue ?", "2x TAB and paste link ?")
								Send("{TAB}{TAB}")
								Send("https://www.internalfb.com/butterfly/form/286112350403416/{TAB}{SPACE}")
								$next = MsgBox(4100, "Continue ?", "4x TAB and complete ?")
								;MouseClick("left",1693, 1102)	;Click complete workflow
								;$next = MsgBox(4100, "Continue ?", "Next ?")
								Send("{TAB}{TAB}{TAB}{TAB}{ENTER}")
								MsgBox(0, "Case", "Completed!", 5)
							Else
									;End if
							EndIf
					;	Case Else
							;GUIDelete($hGUI)
							;ExitLoop
					;	EndSwitch
				Case "pass"
					Global $title = "Password Reset"
					_Start()
					; GUI Function skal starta her.
					; Create a GUI with various controls.
					Local $hGUI = GUICreate("xDo", 300, 200)
						Local $hGUI = GUICreate("xDo", 300, 200)
			
					; Create a combobox control.
					Local $subCatagory = GUICtrlCreateCombo("Windows", 10, 10, 185, 20)
					Local $model = GUICtrlCreateCombo("Forgotten", 10, 40, 185, 20)
					Local $idButton_Close = GUICtrlCreateButton("Close", 210, 170, 85, 25)
			
					; Add additional items to the combobox.
					GUICtrlSetData($subCatagory, "Mac", "Windows")
					GUICtrlSetData($model, "Locked out","Forgotten")
			
					; Display the GUI.
					GUISetState(@SW_SHOW, $hGUI)
			
			
					; Loop until the user exits.
					While 1
							Switch GUIGetMsg()
									Case $GUI_EVENT_CLOSE, $idButton_Close
										;If (GUICtrlRead($model)) = "Mention the exact Model" Then
										;	$model = InputBox("Model", "Input exact model", "T490s")
										;Else
										;	$model = GUICtrlRead($model)
										;EndIf
										$sComboRead = GUICtrlRead($subCatagory) & " - " & GUICtrlRead($model)
										FileWriteLine("C:\Users\ormardalsgaard\Documents\AutoIt\hist.txt", $sComboRead)
										ExitLoop
			
;       			                 Case $subCatagory
											
;       			                         MsgBox($MB_SYSTEMMODAL, "", "The combobox is currently displaying: " & $sComboRead, 0, $hGUI)
			
							EndSwitch
					WEnd
					$comboReturn = MsgBox(4, "Just do it!", $sComboRead)
					Switch $comboReturn
						Case 6
							GUIDelete($hGUI)
							Sleep(100)
							Send($sComboRead & "{TAB}")
						Case Else
							GUIDelete($hGUI)
							ExitLoop
					EndSwitch
					
				Case "cert"
					Global $title = "Certificate renewal"
					_Start()
					
					; GUI Function skal starta her.
					; Create a GUI with various controls.
					Local $hGUI = GUICreate("xDo", 300, 200)
			
					; Create a combobox control.
					Local $subCatagory = GUICtrlCreateCombo("Laptop - Windows", 10, 10, 185, 20)
					Local $model = GUICtrlCreateCombo("Exact Model", 10, 40, 185,	 20)
					Local $issue = GUICtrlCreateCombo("Expired and or updated certificate", 10, 70, 200, 20)
					Local $idButton_Close = GUICtrlCreateButton("Close", 210, 170, 85, 25)
			
					; Add additional items to the combobox.
					GUICtrlSetData($subCatagory, "Laptop - MAC", "Laptop - Windows")
					GUICtrlSetData($model, "MBP|M1|Mini", "Exact Model")
					GUICtrlSetData($issue, "Lighthouse not connecting","Expired and or updated certificate")
			
					; Display the GUI.
					GUISetState(@SW_SHOW, $hGUI)
			
					Local $sComboRead = ""
			
					; Loop until the user exits.
					While 1
							Switch GUIGetMsg()
									Case $GUI_EVENT_CLOSE, $idButton_Close
										;If (GUICtrlRead($model)) = "Mention the exact Model" Then
										;	$model = InputBox("Model", "Input exact model", "T490s")
										;Else
										;	$model = GUICtrlRead($model)
										;EndIf
										$sComboRead = $title & " - " & GUICtrlRead($subCatagory) & " - " & GUICtrlRead($model) & " - " & GUICtrlRead($issue)
										FileWriteLine("C:\Users\ormardalsgaard\Documents\AutoIt\hist.txt", $sComboRead)
										ExitLoop
			
;       			                 Case $subCatagory
											
;       			                         MsgBox($MB_SYSTEMMODAL, "", "The combobox is currently displaying: " & $sComboRead, 0, $hGUI)
			
							EndSwitch
					WEnd
					$comboReturn = MsgBox(4, "Just do it!", $sComboRead)
					Switch $comboReturn
						Case 6
							GUIDelete($hGUI)
							Sleep(100)
							Send($sComboRead & "{TAB}")
						Case Else
							;GUIDelete($hGUI)
							;ExitLoop
						EndSwitch
				Case "mfa"
					Global $title = "Multifactor authentication"
					_Start()
					; GUI Function skal starta her.
					; Create a GUI with various controls.
					Local $hGUI = GUICreate("xDo", 300, 200)
			
					; Create a combobox control.
					Local $subCatagory = GUICtrlCreateCombo("Yubikey", 10, 10, 185, 20)
					Local $model = GUICtrlCreateCombo("Replacement", 10, 40, 185,	 20)
					Local $issue = GUICtrlCreateCombo("Gave end user new yubikey", 10, 70, 200, 20)
					Local $idButton_Close = GUICtrlCreateButton("Close", 210, 170, 85, 25)
			
					; Add additional items to the combobox.
					GUICtrlSetData($subCatagory, "Duo|FIDO2", "Yubikey")
					GUICtrlSetData($model, "New enroll|Set up", "Replacement")
					GUICtrlSetData($issue, "Provided information and help|Walked end user through process","Gave end user new yubikey")
			
					; Display the GUI.
					GUISetState(@SW_SHOW, $hGUI)
			
					Local $sComboRead = ""
			
					; Loop until the user exits.
					While 1
							Switch GUIGetMsg()
									Case $GUI_EVENT_CLOSE, $idButton_Close
										;If (GUICtrlRead($model)) = "Mention the exact Model" Then
										;	$model = InputBox("Model", "Input exact model", "T490s")
										;Else
										;	$model = GUICtrlRead($model)
										;EndIf
										$sComboRead = $title & " - " & GUICtrlRead($subCatagory) & " - " & GUICtrlRead($model) & " - " & GUICtrlRead($issue)
										FileWriteLine("C:\Users\ormardalsgaard\Documents\AutoIt\hist.txt", $sComboRead)
										ExitLoop
			
;       			                 Case $subCatagory
											
;       			                         MsgBox($MB_SYSTEMMODAL, "", "The combobox is currently displaying: " & $sComboRead, 0, $hGUI)
			
							EndSwitch
					WEnd
					$comboReturn = MsgBox(4, "Just do it!", $sComboRead)
					Switch $comboReturn
						Case 6
							GUIDelete($hGUI)
							Sleep(100)
							Send($sComboRead & "{TAB}")
						Case Else
							;GUIDelete($hGUI)
							;ExitLoop
						EndSwitch
				Case "setu"
					Global $title = "Computer setup"
					_Start()
					
					; Create a GUI with various controls.
					Local $hGUI = GUICreate("xDo", 300, 200)
			
					; Create a combobox control.
					Local $subCatagory = GUICtrlCreateCombo("Laptop - Windows", 10, 10, 185, 20)
					Local $model = GUICtrlCreateCombo("Exact Model", 10, 40, 185,	 20)
					Local $issue = GUICtrlCreateCombo("Replacement computer", 10, 70, 200, 20)
					Local $idButton_Close = GUICtrlCreateButton("Close", 210, 170, 85, 25)
			
					; Add additional items to the combobox.
					GUICtrlSetData($subCatagory, "Laptop - MAC", "Laptop - Windows")
					GUICtrlSetData($model, "MBP|M1|Mini", "Exact Model")
					GUICtrlSetData($issue, "New hire","Replacement computer")
			
					; Display the GUI.
					GUISetState(@SW_SHOW, $hGUI)
			
					Local $sComboRead = ""
			
					; Loop until the user exits.
					While 1
							Switch GUIGetMsg()
									Case $GUI_EVENT_CLOSE, $idButton_Close
										;If (GUICtrlRead($model)) = "Mention the exact Model" Then
										;	$model = InputBox("Model", "Input exact model", "T490s")
										;Else
										;	$model = GUICtrlRead($model)
										;EndIf
										$sComboRead = $title & " - " & GUICtrlRead($subCatagory) & " - " & GUICtrlRead($model) & " - " & GUICtrlRead($issue)
										FileWriteLine("C:\Users\ormardalsgaard\Documents\AutoIt\hist.txt", $sComboRead)
										ExitLoop
			
;       			                 Case $subCatagory
											
;       			                         MsgBox($MB_SYSTEMMODAL, "", "The combobox is currently displaying: " & $sComboRead, 0, $hGUI)
			
							EndSwitch
					WEnd
					$comboReturn = MsgBox(4, "Just do it!", $sComboRead)
					Switch $comboReturn
						Case 6
							GUIDelete($hGUI)
							Sleep(100)
							Send($sComboRead & "{TAB}")
						Case Else
							;GUIDelete($hGUI)
							;ExitLoop
						EndSwitch
						
				Case "soft"
					$software = InputBox("Software title", "What kind of software?")
					Global $title = $software & " installation"
					_Start()
					Send("Software - Installation - " & $software & " - Installed software{TAB}{ENTER}")
					;_End()
					Send("software install r{ENTER}")
				Case "hard"
					Global $title = InputBox("Title of this sucker.", "What's wrong with the hardware?")
					_Start()
					
					; Create a GUI with various controls.
					Local $hGUI = GUICreate("xDo", 300, 200)
			
					; Create a combobox control.
					Local $subCatagory = GUICtrlCreateCombo("Laptop - Windows", 10, 10, 185, 20)
					Local $model = GUICtrlCreateCombo("Lenovo", 10, 40, 185, 20)
					Local $issue = GUICtrlCreateCombo("What's the main issue?", 10, 70, 200, 20)
					Local $idButton_Close = GUICtrlCreateButton("Close", 210, 170, 85, 25)
			
					; Add additional items to the combobox.
					GUICtrlSetData($subCatagory, "Laptop - MAC|Desktop - Windows", "Laptop - Windows")
					GUICtrlSetData($model, "MSI|Mini|MBP|M1|", "Lenovo")
					;GUICtrlSetData($issue, "Replacement Asset Tag|No longer needed Asset Tag|same as laptops above Asset Tag","Terminated Asset Tag")
			
					; Display the GUI.
					GUISetState(@SW_SHOW, $hGUI)
			
					Local $sComboRead = ""
			
					; Loop until the user exits.
					While 1
							Switch GUIGetMsg()
									Case $GUI_EVENT_CLOSE, $idButton_Close
										;If (GUICtrlRead($model)) = "Mention the exact Model" Then
										;	$model = InputBox("Model", "Input exact model", "T490s")
										;Else
										;	$model = GUICtrlRead($model)
										;EndIf
										$sComboRead = GUICtrlRead($subCatagory) & " - " & GUICtrlRead($model) & " - " & $title
										;FileWriteLine("C:\Users\ormardalsgaard\Documents\AutoIt\hist.txt", $sComboRead)
										ExitLoop
			
;       			                 Case $subCatagory
											
;       			                         MsgBox($MB_SYSTEMMODAL, "", "The combobox is currently displaying: " & $sComboRead, 0, $hGUI)
			
							EndSwitch
					WEnd
					$comboReturn = MsgBox(4, "Just do it!", $sComboRead)
					Switch $comboReturn
						Case 6
							GUIDelete($hGUI)
							Sleep(100)
							Send($sComboRead & "{TAB}")
						Case Else
							GUIDelete($hGUI)
							;ExitLoop
					EndSwitch
						
				Case "info"
					Global $title = InputBox("Title", "What kind of information?")
					_Start()
					; Create a GUI with various controls.
					Local $hGUI = GUICreate("xDo", 300, 200)
			
					; Create a combobox control.
					Local $subCatagory = GUICtrlCreateCombo("Track@", 10, 10, 185, 20)
					Local $model = GUICtrlCreateCombo("Printer request", 10, 40, 185, 20)
					Local $issue = GUICtrlCreateCombo("Provided wiki link and or gave information", 10, 70, 200, 20)
					Local $idButton_Close = GUICtrlCreateButton("Close", 210, 170, 85, 25)
			
					; Add additional items to the combobox.
					GUICtrlSetData($subCatagory, "Buy@|General question", "Track@")
					;GUICtrlSetData($model, "", "Detail of request")
					GUICtrlSetData($issue, "Replacement Asset Tag|No longer needed Asset Tag|same as laptops above Asset Tag","Terminated Asset Tag")
			
					; Display the GUI.
					GUISetState(@SW_SHOW, $hGUI)
			
					Local $sComboRead = ""
			
					; Loop until the user exits.
					While 1
							Switch GUIGetMsg()
									Case $GUI_EVENT_CLOSE, $idButton_Close
										;If (GUICtrlRead($model)) = "Mention the exact Model" Then
										;	$model = InputBox("Model", "Input exact model", "T490s")
										;Else
										;	$model = GUICtrlRead($model)
										;EndIf
										$sComboRead = GUICtrlRead($subCatagory) & " - " & GUICtrlRead($model) & " - " & GUICtrlRead($issue)
										FileWriteLine("C:\Users\ormardalsgaard\Documents\AutoIt\hist.txt", $sComboRead)
										ExitLoop
			
;       			                 Case $subCatagory
											
;       			                         MsgBox($MB_SYSTEMMODAL, "", "The combobox is currently displaying: " & $sComboRead, 0, $hGUI)
			
							EndSwitch
					WEnd
					$comboReturn = MsgBox(4, "Just do it!", $sComboRead)
					Switch $comboReturn
						Case 6
							GUIDelete($hGUI)
							Sleep(100)
							Send($sComboRead & "{TAB}")
						Case Else
							GUIDelete($hGUI)
							ExitLoop
					EndSwitch
					
					; Incoming multiple choice
				
				
				Case "vio"
					Global $title = InputBox("Title", "What kind of VIO issue?")
					_Start()
					
					; Create a GUI with various controls.
					Local $hGUI = GUICreate("xDo", 300, 200)
			
					; Create a combobox control.
					Local $subCatagory = GUICtrlCreateCombo("Conference room (name) and or device ", 10, 10, 185, 20)
					Local $model = GUICtrlCreateCombo("Audio", 10, 40, 185, 20)
					Local $issue = GUICtrlCreateCombo("Brief description (include task # here)", 10, 70, 200, 20)
					Local $idButton_Close = GUICtrlCreateButton("Close", 210, 170, 85, 25)
			
					; Add additional items to the combobox.
					; GUICtrlSetData($subCatagory, "Vending machine|General question", "Buy@")
					GUICtrlSetData($model, "Video", "Audio")
					; GUICtrlSetData($issue, "Replacement Asset Tag|No longer needed Asset Tag|same as laptops above Asset Tag","Terminated Asset Tag")
			
					; Display the GUI.
					GUISetState(@SW_SHOW, $hGUI)
			
					Local $sComboRead = ""
			
					; Loop until the user exits.
					While 1
							Switch GUIGetMsg()
									Case $GUI_EVENT_CLOSE, $idButton_Close
										;If (GUICtrlRead($model)) = "Mention the exact Model" Then
										;	$model = InputBox("Model", "Input exact model", "T490s")
										;Else
										;	$model = GUICtrlRead($model)
										;EndIf
										$sComboRead = GUICtrlRead($subCatagory) & " - " & GUICtrlRead($model) & " - " & GUICtrlRead($issue)
										FileWriteLine("C:\Users\ormardalsgaard\Documents\AutoIt\hist.txt", $sComboRead)
										ExitLoop
			
;       			                 Case $subCatagory
											
;       			                         MsgBox($MB_SYSTEMMODAL, "", "The combobox is currently displaying: " & $sComboRead, 0, $hGUI)
			
							EndSwitch
					WEnd
					$comboReturn = MsgBox(4, "Just do it!", $sComboRead)
					Switch $comboReturn
						Case 6
							GUIDelete($hGUI)
							Sleep(100)
							Send($sComboRead & "{TAB}")
						Case Else
							GUIDelete($hGUI)
							ExitLoop
					EndSwitch
					
					
					
				Case "acce"
					Global $title = InputBox("Title", "What kind of accessory?")
					;$accessory = InputBox("Accesorry title", "What kind of accessory?")
					_Start()
					Send("Informational - Vending machine - " & $title & " request - Provided wiki link and or gave information{TAB}{ENTER}")
						;_End()
						$continue = MsgBox(4100, "Continue ?", "Continue with Accessory workflow ?")
							;MSGBOX DEBUGGER MsgBox(4096,"1",$continue)
							If $continue == 6 Then ;6=yes, 7=no
								MouseClick("left",1721, 852)	;Click Unsupported request
								$next = MsgBox(4100, "Continue ?", "Click Make selection ?")
								;Send("unsu")
								;Send("{ENTER}")
								;Sleep(10000)
								MouseClick("left",1722, 917)	;Click Make selection
								Sleep(100)
								send("buy")						
								send("{ENTER}")
								$next = MsgBox(4100, "Continue ?", "Continue?")
								send("{TAB}")
								send("https://www.internalfb.com/intern/wiki/Enterprise_Engineering/Hardware_Catalog/IT_Accessories")
								;Sleep(3000)						
								;MouseClick("left",1702, 1202)	;Click complete workflow
								; Sleep(2000)
								; stop instant completing Send("{TAB}{TAB}{TAB}{TAB}{ENTER}")
							;Sleep(500)
							EndIf
					;Send("acc")
					;Sleep(100)
					;Send("{ENTER}")
					_
				Case "repe"
						Global $title = "Asset return"
						_Start()
						$history = FileReadLine("C:\Users\ormardalsgaard\Documents\AutoIt\hist.txt", -1)
						Send($history)
						Send("{TAB}")
				Case "kill" 
						ExitLoop
				Case Else
					;Send("Wat?")
					_MouseTrap()
			EndSwitch
				;Else
;			MsgBox($MB_SYSTEMMODAL, "Error", "Clipboard is not xDo but actually " & $sClip)
		;EndIf
WEnd		
;		EndIf
;	WEnd

	; Print the success message
	;MsgBox($MB_SYSTEMMODAL, "AutoIt Example", "You typed in the correct word!  Congrats.")

EndFunc   ;==>_Example




				
	
