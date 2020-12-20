;Delays
#SingleInstance, Force

;Ensures a consistent starting directory.
SetWorkingDir %A_ScriptDir%

;Additional delay after opening interaction menu.
Global IntMenuDelay := 200		

;Delay between send key commands.
Global KeySendDelay := 100

;Duration each key press is held down.
Global KeyPressDuration := 70

;Custom Delay Times.
Global ShortDelay := 500
Global MediumDelay := 1000
Global LongDelay := 2000

CFG = GTAV_AHK.ini

;Delay between keystrokes and press duration.
setkeydelay, %KeySendDelay%, %KeyPressDuration%

;Default Modifier
DefModKey = !

;Labels & Defaults
;INTERACTION MENU
Gui, Add, Text,, INTERACTION MENU
Gui, Add, Text,, Register CEO:
Gui, Add, Text,, Register MC:
Gui, Add, Text,, Disband CEO/MC:
Gui, Add, Text,, Armor:
Gui, Add, Text,, Snack:
Gui, Add, Text,, CEO Buzzard:
Gui, Add, Text,, Personal Vehicle:
Gui, Add, Text,, Personal Aircraft:
Gui, Add, Text,, Passive Toggle:
Gui, Add, Text,, Services:
Gui, Add, Text,ym,
Gui, Add, Hotkey,vRegisterCEOKey,PGUP
Gui, Add, Hotkey,vRegisterMCKey,PGDN
Gui, Add, Hotkey,vDisbandKey,End
Gui, Add, Hotkey,vArmorKey,%DefModKey%r
Gui, Add, Hotkey,vSnackKey,%DefModKey%e
Gui, Add, Hotkey,vCEOBuzzardKey,%DefModKey%b
Gui, Add, Hotkey,vPersonalVehicleKey,%DefModKey%v
Gui, Add, Hotkey,vPersonalAircraftKey,%DefModKey%a
Gui, Add, Hotkey,vPassiveToggleKey,%DefModKey%t
Gui, Add, Hotkey,vServicesKey,%DefModKey%s

;PHONE CALLS
Gui, Add, Text,ym, SPEED DIAL
Gui, Add, Text,, Lamar:
Gui, Add, Text,, Lester:
Gui, Add, Text,, Mechanic:
Gui, Add, Text,, Merryweather:
Gui, Add, Text,, Mors Mutual:
Gui, Add, Text,, Pegasus:
Gui, Add, Text,ym,
Gui, Add, Hotkey,vLamarKey,%DefModKey%h
Gui, Add, Hotkey,vLesterKey,%DefModKey%l
Gui, Add, Hotkey,vMechanicKey,%DefModKey%g
Gui, Add, Hotkey,vMerryweatherKey,%DefModKey%m
Gui, Add, Hotkey,vMorsMutualKey,%DefModKey%i
Gui, Add, Hotkey,vPegasusKey,%DefModKey%p

;GAME MENU
Gui, Add, Text,ym, GAME MENU
Gui, Add, Text,, Join Online:
Gui, Add, Text,, Join Friends:
Gui, Add, Text,, Join Crew Members:
Gui, Add, Text,, Join New Session:
Gui, Add, Text,, AFK:
Gui, Add, Text,ym,
Gui, Add, Hotkey,vJoinOnlineKey,%DefModKey%o
Gui, Add, Hotkey,vJoinFriendsKey,%DefModKey%f
Gui, Add, Hotkey,vJoinCrewMembersKey,%DefModKey%c
Gui, Add, Hotkey,vJoinNewSessionKey,%DefModKey%n

;CASINO
Gui, Add, Text, ym, CASINO
Gui, Add, Text,, Visitor Chips:
Gui, Add, Text,, Spin Wheel:
Gui, Add, Text,ym,
Gui, Add, Hotkey,vVisitorChipsKey,%DefModKey%4
Gui, Add, Hotkey,vSpinWheelKey,%DefModKey%w

;SERVICES
Gui, Add, Text,ym, SERVICES
Gui, Add, Text,, Kill GTA:
Gui, Add, Text,ym,
Gui, Add, Hotkey,vKillGTAKey,%DefModKey%k

IfExist,%CFG%
{ 
IniRead,Read_RegisterCEOKey,%CFG%,Hotkeys,Register CEO
IniRead,Read_RegisterMCKey,%CFG%,Hotkeys,Register MC
IniRead,Read_DisbandKey,%CFG%,Hotkeys,Disband
IniRead,Read_ArmorKey,%CFG%,Hotkeys,Armor
IniRead,Read_SnackKey,%CFG%,Hotkeys,Snack
IniRead,Read_CEOBuzzardKey,%CFG%,Hotkeys,CEO Buzzard
IniRead,Read_PersonalVehicleKey,%CFG%,Hotkeys,Personal Vehicle
IniRead,Read_PersonalAircraftKey,%CFG%,Hotkeys,Personal Aircraft
IniRead,Read_PassiveToggleKey,%CFG%,Hotkeys,Passive Toggle
IniRead,Read_ServicesKey,%CFG%,Hotkeys,Services
IniRead,Read_LamarKey,%CFG%,Hotkeys,Lamar
IniRead,Read_LesterKey,%CFG%,Hotkeys,Lester
IniRead,Read_MechanicKey,%CFG%,Hotkeys,Mechanic
IniRead,Read_MerryweatherKey,%CFG%,Hotkeys,Merryweather
IniRead,Read_MorsMutualKey,%CFG%,Hotkeys,Mors Mutual
IniRead,Read_PegasusKey,%CFG%,Hotkeys,Pegasus
IniRead,Read_JoinOnlineKey,%CFG%,Hotkeys,Join Online
IniRead,Read_JoinFriendsKey,%CFG%,Hotkeys,Join Friends
IniRead,Read_JoinCrewMembersKey,%CFG%,Hotkeys,Join Crew Members
IniRead,Read_JoinNewSessionKey,%CFG%,Hotkeys,Join New Session
IniRead,Read_VisitorChipsKey,%CFG%,Hotkeys,Visitor Chips
IniRead,Read_SpinWheelKey,%CFG%,Hotkeys,Spin Wheel
IniRead,Read_KillGTAKey,%CFG%,Hotkeys,Kill GTA

GuiControl,,RegisterCEOKey,%Read_RegisterCEOKey%
GuiControl,,RegisterMCKey,%Read_RegisterMCKey%
GuiControl,,DisbandKey,%Read_DisbandKey%
GuiControl,,ArmorKey,%Read_ArmorKey%
GuiControl,,SnackKey,%Read_SnackKey%
GuiControl,,CEOBuzzardKey,%Read_CEOBuzzardKey%
GuiControl,,PersonalVehicleKey,%Read_PersonalVehicleKey%
GuiControl,,PersonalAircraftKey,%Read_PersonalAircraftKey%
GuiControl,,PassiveToggleKey,%Read_PassiveToggleKey%
GuiControl,,ServicesKey,%Read_ServicesKey%
GuiControl,,LesterKey,%Read_LesterKey%
GuiControl,,LamarKey,%Read_LamarKey%
GuiControl,,MechanicKey,%Read_MechanicKey%
GuiControl,,MerryweatherKey,%Read_MerryweatherKey%
GuiControl,,MorsMutualKey,%Read_MorsMutualKey%
GuiControl,,PegasusKey,%Read_PegasusKey%
GuiControl,,JoinOnlineKey,%Read_JoinOnlineKey%
GuiControl,,JoinFriendsKey,%Read_JoinFriendsKey%
GuiControl,,JoinCrewMembersKey,%Read_JoinCrewMembersKey%
GuiControl,,VisitorChipsKey,%Read_VisitorChipsKey%
GuiControl,,SpinWheelKey,%Read_SpinWheelKey%
GuiControl,,KillGTAKey,%Read_KillGTAKey%
}

Gui, Add, Button, gsave, save
Gui, Show,, GTA Online AHK
return 

save:
Gui, Submit

IfNotExist,%CFG% OR IfExist,%CFG%
{
IniWrite,%RegisterCEOKey%,%CFG%,Hotkeys,Register CEO
IniWrite,%RegisterMCKey%,%CFG%,Hotkeys,Register MC
IniWrite,%DisbandKey%,%CFG%,Hotkeys,Disband
IniWrite,%ArmorKey%,%CFG%,Hotkeys,Armor
IniWrite,%SnackKey%,%CFG%,Hotkeys,Snack
IniWrite,%CEOBuzzardKey%,%CFG%,Hotkeys,CEO Buzzard
IniWrite,%PersonalVehicleKey%,%CFG%,Hotkeys,Personal Vehicle
IniWrite,%PersonalAircraftKey%,%CFG%,Hotkeys,Personal Aircraft
IniWrite,%PassiveToggleKey%,%CFG%,Hotkeys,Passive Toggle
IniWrite,%ServicesKey%,%CFG%,Hotkeys,Services
IniWrite,%LesterKey%,%CFG%,Hotkeys,Lester
IniWrite,%LamarKey%,%CFG%,Hotkeys,Lamar
IniWrite,%MechanicKey%,%CFG%,Hotkeys,Mechanic
IniWrite,%MerryweatherKey%,%CFG%,Hotkeys,Merryweather
IniWrite,%MorsMutualKey%,%CFG%,Hotkeys,Mors Mutual
IniWrite,%PegasusKey%,%CFG%,Hotkeys,Pegasus
IniWrite,%JoinOnlineKey%,%CFG%,Hotkeys,Join Online
IniWrite,%JoinFriendsKey%,%CFG%,Hotkeys,Join Friends
IniWrite,%JoinCrewMembersKey%,%CFG%,Hotkeys,Join Crew Members
IniWrite,%JoinNewSessionKey%,%CFG%,Hotkeys,Join New Session
IniWrite,%VisitorChipsKey%,%CFG%,Hotkeys,Visitor Chips
IniWrite,%SpinWheelKey%,%CFG%,Hotkeys,Spin Wheel
IniWrite,%KillGTAKey%,%CFG%,Hotkeys,Kill GTA
}

Hotkey, %RegisterCEOKey%, RegisterCEO
Hotkey, %RegisterMCKey%, RegisterMC
Hotkey, %DisbandKey%, Disband
Hotkey, %ArmorKey%, SuperHeavyArmor
Hotkey, %SnackKey%, Snack
Hotkey, %CEOBuzzardKey%, CEOBuzzard
Hotkey, %PersonalVehicleKey%, PersonalVehicle
Hotkey, %PersonalAircraftKey%, PersonalAircraft
Hotkey, %PassiveToggleKey%, PassiveToggle
Hotkey, %ServicesKey%, Services
Hotkey, %LamarKey%, Lamar
Hotkey, %LesterKey%, Lester
Hotkey, %MechanicKey%, Mechanic
Hotkey, %MerryweatherKey%, Merryweather
Hotkey, %MorsMutualKey%, MorsMutual
Hotkey, %PegasusKey%, Pegasus
Hotkey, %JoinOnlineKey%, JoinOnline
Hotkey, %JoinFriendsKey%, JoinFriends
Hotkey, %JoinCrewMembersKey%, JoinCrewMembers
Hotkey, %JoinNewSessionKey%, JoinNewSession
Hotkey, %VisitorChipsKey%, VisitorChips
Hotkey, %SpinWheelKey%, SpinWheel
Hotkey, %KillGTAKey%, KillGTA

return

;Disables hotkeys when alt-tabbed or GTA is closed.
#IfWinActive ahk_class grcWindow

;Interaction Menu
OrgStatus = false
CEO = false
MC = false
PersonalRide = false

RegisterCEO:
if (!%OrgStatus% || %MC%) {
	if (%MC%) {
		Disband()
		MC = false
	}
InteractionMenu()
Send {Down 6}{Enter}{Enter}
OrgStatus = true
CEO = true
}
return

RegisterMC:
if (!%OrgStatus% || %CEO%) {
	if (%CEO%) {
		Disband()
		CEO = false
	}
InteractionMenu()
Send {Down 7}{Enter}{Enter}
OrgStatus = true
MC = true
}
return

Disband:
if (%OrgStatus%) {
	if (%CEO%) {
	 CEO = false
	}
	if (%MC%) {
	 MC = false
	}
	Disband()
	OrgStatus = false
}
return

SuperHeavyArmor:
InteractionMenu()
if (%OrgStatus%){
Send {Down 3}{Enter}{Down}{Enter}
} else {
Send {Down 2}{Enter}{Down}{Enter}
}
Send {Up 3}{Enter}{m}
return				

Snack:
InteractionMenu()
if (%OrgStatus%){
Send {Down 3}{Enter}{Down 2}{Enter}  
} else {
Send {Down 2}{Enter}{Down 2}{Enter}   
}
Send {Enter}
return

CEOBuzzard:
InteractionMenu()
if (%CEO%) {
Send {Enter}{Up 2}{Enter}
Send {Left 3}{Down 4}{Enter}
}
return

PersonalVehicle:
InteractionMenu()
switch %OrgStatus% {
  case true:
    Send {Down}
    if (%PersonalRide%) {
      PersonalRide()
	  ReturnRide()
	  PersonalRide = false
    } else {
      PersonalRide()
	  Send {Enter}{m}
	  PersonalRide = true
    }
  default:
	if (!%PersonalRide%) {
      PersonalRide()
	  Send {Enter}{m}
	  PersonalRide = true
    } else {
      PersonalRide()
	  ReturnRide()
	  PersonalRide = false
    }
}
return

PersonalAircraft:
InteractionMenu()
switch %OrgStatus% {
  case true:
    Send {Down}
    if (%PersonalRide%) {
      PersonalRide()
      ReturnRide()
	  PersonalRide = false
    } else {
      PersonalRide()
	  Send {Down}{Enter}
	  PersonalRide = true
    }
  default:
	if (!%PersonalRide%) {
      PersonalRide()
	  Send {Down}{Enter}
	  PersonalRide = true
    } else {
      PersonalRide()
      ReturnRide()
	  PersonalRide = false
    }
}
return

PassiveToggle:
InteractionMenu()
Send {Up}{Enter}{m}
return

Services:
InteractionMenu()
switch %OrgStatus% {
  case true:
    Send {Down 6}{Enter}
  default:
    send {Down 5}{Enter}
}
return

;Phone Calls
Lamar:
PhoneUp()
ContactsList()
Send {Left 4}{Down 1}{Enter}
return

Lester:
PhoneUp()
ContactsList()
Send {Left 4}{Down 3}{Enter}
return

Mechanic:
PhoneUp()
ContactsList()
Send {Left 2}{Up 3}{Enter}
PersonalVehicle = True
return

Merryweather:
PhoneUp()
ContactsList()
Send {Left 2}{Up 2}{Enter}
return	

MorsMutual:
PhoneUp()
ContactsList()
Send {Left 2}{Up}{Enter}
return	

Pegasus:
PhoneUp()
ContactsList()
Send {Left 2}{Down 3}{Enter}
return

;Game Menu
JoinOnline:
Send {ESC}
sleep, %MediumDelay%
Send {Right 5}
sleep, %MediumDelay%
Send {Enter}
sleep, %ShortDelay%
Send {Up}{Enter}
sleep, %ShortDelay%
Send {Down}{Enter}
sleep, %ShortDelay%
Send {Enter}
return

JoinFriends:
Send {ESC}
sleep, %MediumDelay%
Send {Right}
sleep, %MediumDelay%
Send {Enter}
sleep, %ShortDelay%
Send, {Down}{Enter}
sleep, %ShortDelay%
Send {Enter}
return

JoinCrewMembers:
Send {ESC}
sleep, %MediumDelay%
Send {Right}
sleep, %MediumDelay%
Send {Enter}
sleep, %ShortDelay%
Send {Down 2}{Enter}
sleep, %ShortDelay%
Send {Enter}
return

JoinNewSession:
Send {ESC}
sleep, %MediumDelay%
Send {Right}
sleep, %MediumDelay%
Send {Enter}
sleep, %ShortDelay%
Send {Up 3}{Enter}
sleep, %ShortDelay%
Send {Enter}
return

;CASINO
SpinWheel:
Send {e}{Enter}
sleep, 7246.875
Send {s}
return

VisitorChips:
Send {e}{Up}{Enter}
sleep, %MediumDelay%
Send {e}{Down}{Tab}{Enter}
sleep, %MediumDelay%
Send {Enter}
sleep, %MediumDelay%
Send {Enter}{Esc}
return

;Helper Functions
Disband(){
InteractionMenu()
Send {Enter}{Up}{Enter}
}
return

PersonalRide(){
Send {Down 4}{Enter}
}
return

ReturnRide(){
Send {Down 4}{Enter}{m}
}
return

PhoneUp(){
Send {Up}
sleep, %ShortDelay%
} 
return

ContactsList(){
Send {Right}{Up}{Enter}
sleep, %ShortDelay%
}
return

InteractionMenu(){
Send {m}
sleep, %ShortDelay% 
} 
return

;Services
KillGTA:
Run tskill gta5
ExitApp
Return