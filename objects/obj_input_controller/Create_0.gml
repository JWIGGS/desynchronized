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
#macro ky_control_reload		"R"
#macro ky_control_pickup		"F"
#macro ky_control_select		"E"
#macro ky_control_back			vk_lshift


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

