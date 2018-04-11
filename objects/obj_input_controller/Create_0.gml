/// @description 

//control types
#macro control_gamepad0				0
#macro control_gamepad1				1
#macro control_keyboard				2
#macro control_none					3

#macro controlAmount				4


//deadzone
#macro gamepad_deadzone .15


global.controlAvailable[control_gamepad0] = gamepad_is_connected(0);
global.controlAvailable[control_gamepad1] = gamepad_is_connected(1);
global.controlAvailable[control_keyboard] = true;

global.controlAvailable[control_none] = true;

global.controlType[0] = control_keyboard;
global.controlType[1] = control_none;

global.controlSaved[0] = control_keyboard;
global.controlSaved[1] = control_none;

global.controlText[control_gamepad0] = "gamepad 1";
global.controlText[control_gamepad1] = "gamepad 2";
global.controlText[control_keyboard] = "keyboard and mouse";
global.controlText[control_none] = "none";


//controls
#macro gp_control_shoot			gp_shoulderrb
#macro gp_control_look			gp_shoulderr
#macro gp_control_reload		gp_shoulderlb
#macro gp_control_pickup		gp_shoulderl
#macro gp_control_select		gp_face1
#macro gp_control_back			gp_face2
#macro gp_control_pause			gp_start

#macro ky_control_shoot			mb_left
#macro ky_control_look			mb_right
#macro ky_control_reload		ord("R")
#macro ky_control_pickup		ord("F")
#macro ky_control_select		ord("C")
#macro ky_control_back			ord("X")
#macro ky_control_pause			vk_space
#macro ky_control_up			ord("W")
#macro ky_control_down			ord("S")
#macro ky_control_left			ord("A")
#macro ky_control_right			ord("D")


#macro control_display_reload 0
#macro control_display_pickup 1
#macro control_display_select 2
#macro control_display_pause 3
#macro control_display_shoot 4
#macro control_display_look 5
#macro control_display_back 6



global.controlDisplayDescription[control_display_shoot] = "shoot";
global.controlDisplayDescription[control_display_reload] = "reload";
global.controlDisplayDescription[control_display_select] = "select";
global.controlDisplayDescription[control_display_pause] = "pause";
global.controlDisplayDescription[control_display_look] = "look";
global.controlDisplayDescription[control_display_pickup] = "pickup";
global.controlDisplayDescription[control_display_back] = "back";

global.controlDisplayText[control_gamepad0,control_display_shoot] = "RT";
global.controlDisplayText[control_gamepad0,control_display_reload] = "LT";
global.controlDisplayText[control_gamepad0,control_display_select] = "A";
global.controlDisplayText[control_gamepad0,control_display_pause] = "START";
global.controlDisplayText[control_gamepad0,control_display_look] = "RB";
global.controlDisplayText[control_gamepad0,control_display_pickup] = "LB";
global.controlDisplayText[control_gamepad0,control_display_back] = "B";

global.controlDisplayText[control_gamepad1,control_display_shoot] = "RT";
global.controlDisplayText[control_gamepad1,control_display_reload] = "LT";
global.controlDisplayText[control_gamepad1,control_display_select] = "A";
global.controlDisplayText[control_gamepad1,control_display_pause] = "START";
global.controlDisplayText[control_gamepad1,control_display_look] = "RB";
global.controlDisplayText[control_gamepad1,control_display_pickup] = "LB";
global.controlDisplayText[control_gamepad1,control_display_back] = "B";

global.controlDisplayText[control_keyboard,control_display_shoot] = "LMB";
global.controlDisplayText[control_keyboard,control_display_reload] = "R";
global.controlDisplayText[control_keyboard,control_display_select] = "C";
global.controlDisplayText[control_keyboard,control_display_pause] = "SPACE";
global.controlDisplayText[control_keyboard,control_display_look] = "RMB";
global.controlDisplayText[control_keyboard,control_display_pickup] = "F";
global.controlDisplayText[control_keyboard,control_display_back] = "X";




for(var i = 0; i<2; i++){
	global.controlUpPressed[i] = false;
	global.controlUp[i] = false;
	global.controlUpReleased[i] = false;
	global.controlUpPrev[i] = false;
	
	global.controlDownPressed[i] = false;
	global.controlDown[i] = false;
	global.controlDownReleased[i] = false;
	global.controlDownPrev[i] = false;
	
	global.controlLeftPressed[i] = false;
	global.controlLeft[i] = false;
	global.controlLeftReleased[i] = false;
	global.controlLeftPrev[i] = false;
	
	global.controlRightPressed[i] = false;
	global.controlRight[i] = false;
	global.controlRightReleased[i] = false;
	global.controlRightPrev[i] = false;
	
	global.controlSelectPressed[i] = false;
	global.controlSelect[i] = false;
	global.controlSelectReleased[i] = false;
	global.controlSelectPrev[i] = false;
	
	global.controlBackPressed[i] = false;
	global.controlBack[i] = false;
	global.controlBackReleased[i] = false;
	global.controlBackPrev[i] = false;
	
	global.controlAim[i] = 0;
	global.controlMoveX[i] = 0;
	global.controlMoveY[i] = 0;
	
	global.controlShootPressed[i] = false;
	global.controlShoot[i] = false;
	global.controlShootReleased[i] = false;
	global.controlShootPrev[i] = false;
	
	global.controlLookPressed[i] = false;
	global.controlLook[i] = false;
	global.controlLookReleased[i] = false;
	global.controlLookPrev[i] = false;
	
	global.controlReloadPressed[i] = false;
	global.controlReload[i] = false;
	global.controlReloadReleased[i] = false;
	global.controlReloadPrev[i] = false;
	
	global.controlPickupPressed[i] = false;
	global.controlPickup[i] = false;
	global.controlPickupReleased[i] = false;
	global.controlPickupPrev[i] = false;
	
	global.controlPausePressed[i] = false;
	global.controlPause[i] = false;
	global.controlPauseReleased[i] = false;
	global.controlPausePrev[i] = false;
	
	
}

