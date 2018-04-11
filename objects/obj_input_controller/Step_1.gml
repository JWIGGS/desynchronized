/// @description 
global.controlAvailable[control_gamepad0] = gamepad_is_connected(0);
global.controlAvailable[control_gamepad1] = gamepad_is_connected(1);
global.controlAvailable[control_keyboard] = true;
global.controlAvailable[control_none] = true;

if(global.controlAvailable[global.controlSaved[0]] and global.controlAvailable[global.controlSaved[1]]){
	global.controlType[0] = global.controlSaved[0];
	global.controlType[1] = global.controlSaved[1];
	
}


for(var i = 0; i<2; i++){

	if(global.controlAvailable[global.controlType[i]]){
		//gamepad inputs
		
		switch(global.controlType[i]){
			case control_gamepad0:
			case control_gamepad1:
			
				global.controlUpPrev[i] = global.controlUp[i];
				global.controlUp[i] = gamepad_axis_value(global.controlType[i],gp_axislv)<(-gamepad_deadzone*5) or gamepad_axis_value(global.controlType[i],gp_axisrv)<(-gamepad_deadzone*5);
				global.controlUpPressed[i] = global.controlUp[i] and !global.controlUpPrev[i];
				global.controlUpReleased[i] = !global.controlUp[i] and global.controlUpPrev[i];

				global.controlDownPrev[i] = global.controlDown[i];
				global.controlDown[i] = gamepad_axis_value(global.controlType[i],gp_axislv)>(gamepad_deadzone*5) or gamepad_axis_value(global.controlType[i],gp_axisrv)>(gamepad_deadzone*5);
				global.controlDownPressed[i] = global.controlDown[i] and !global.controlDownPrev[i];
				global.controlDownReleased[i] = !global.controlDown[i] and global.controlDownPrev[i];
				
				global.controlLeftPrev[i] = global.controlLeft[i];
				global.controlLeft[i] = gamepad_axis_value(global.controlType[i],gp_axislh)<(-gamepad_deadzone*5) or gamepad_axis_value(global.controlType[i],gp_axisrh)<(-gamepad_deadzone*5);
				global.controlLeftPressed[i] = global.controlLeft[i] and !global.controlLeftPrev[i];
				global.controlLeftReleased[i] = !global.controlLeft[i] and global.controlLeftPrev[i];
				
				global.controlRightPrev[i] = global.controlRight[i];
				global.controlRight[i] = gamepad_axis_value(global.controlType[i],gp_axislh)>(gamepad_deadzone*5) or gamepad_axis_value(global.controlType[i],gp_axisrh)>(gamepad_deadzone*5);
				global.controlRightPressed[i] = global.controlRight[i] and !global.controlRightPrev[i];
				global.controlRightReleased[i] = !global.controlRight[i] and global.controlRightPrev[i];
				
				global.controlSelect[i] = gamepad_button_check(global.controlType[i],gp_control_select);
				global.controlSelectPressed[i] = gamepad_button_check_pressed(global.controlType[i],gp_control_select);
				global.controlSelectReleased[i] = gamepad_button_check_released(global.controlType[i],gp_control_select);
				
				global.controlBack[i] = gamepad_button_check(global.controlType[i],gp_control_back);
				global.controlBackPressed[i] = gamepad_button_check_pressed(global.controlType[i],gp_control_back);
				global.controlBackReleased[i] = gamepad_button_check_released(global.controlType[i],gp_control_back);
				
				global.controlShoot[i] = gamepad_button_check(global.controlType[i],gp_control_shoot);
				global.controlShootPressed[i] = gamepad_button_check_pressed(global.controlType[i],gp_control_shoot);
				global.controlShootReleased[i] = gamepad_button_check_released(global.controlType[i],gp_control_shoot);
				
				global.controlLook[i] = gamepad_button_check(global.controlType[i],gp_control_look);
				global.controlLookPressed[i] = gamepad_button_check_pressed(global.controlType[i],gp_control_look);
				global.controlLookReleased[i] = gamepad_button_check_released(global.controlType[i],gp_control_look);
				
				global.controlReload[i] = gamepad_button_check(global.controlType[i],gp_control_reload);
				global.controlReloadPressed[i] = gamepad_button_check_pressed(global.controlType[i],gp_control_reload);
				global.controlReloadReleased[i] = gamepad_button_check_released(global.controlType[i],gp_control_reload);
				
				global.controlPickup[i] = gamepad_button_check(global.controlType[i],gp_control_pickup);
				global.controlPickupPressed[i] = gamepad_button_check_pressed(global.controlType[i],gp_control_pickup);
				global.controlPickupReleased[i] = gamepad_button_check_released(global.controlType[i],gp_control_pickup);
				
				global.controlPause[i] = gamepad_button_check(global.controlType[i],gp_control_pause);
				global.controlPausePressed[i] = gamepad_button_check_pressed(global.controlType[i],gp_control_pause);
				global.controlPauseReleased[i] = gamepad_button_check_released(global.controlType[i],gp_control_pause);

				global.controlMoveX[i] = gamepad_axis_value(global.controlType[i],gp_axislh) * (abs(gamepad_axis_value(global.controlType[i],gp_axislh))>gamepad_deadzone);
				global.controlMoveY[i] = gamepad_axis_value(global.controlType[i],gp_axislv) * (abs(gamepad_axis_value(global.controlType[i],gp_axislv))>gamepad_deadzone);
				
				global.controlAim[i] = (round(point_direction(0,0,gamepad_axis_value(global.controlType[i],gp_axisrh),gamepad_axis_value(global.controlType[i],gp_axisrv)))-90) * (abs(gamepad_axis_value(global.controlType[i],gp_axisrh))>(gamepad_deadzone*5) or abs(gamepad_axis_value(global.controlType[i],gp_axisrv))>(gamepad_deadzone*5));

				if(global.controlAim[i]>180){
					global.controlAim[i] -= 360;	
				}
				

				break;
				
				
			case control_keyboard:
			
				global.controlUp[i] = keyboard_check(ky_control_up);
				global.controlUpPressed[i] = keyboard_check_pressed(ky_control_up);
				global.controlUpReleased[i] = keyboard_check_released(ky_control_up);

				global.controlDown[i] = keyboard_check(ky_control_down);
				global.controlDownPressed[i] = keyboard_check_pressed(ky_control_down);
				global.controlDownReleased[i] = keyboard_check_released(ky_control_down);
				
				global.controlLeft[i] = keyboard_check(ky_control_left);
				global.controlLeftPressed[i] = keyboard_check_pressed(ky_control_left);
				global.controlLeftReleased[i] = keyboard_check_released(ky_control_left);
				
				global.controlRight[i] = keyboard_check(ky_control_right);
				global.controlRightPressed[i] = keyboard_check_pressed(ky_control_right);
				global.controlRightReleased[i] = keyboard_check_released(ky_control_right);
				
				global.controlSelect[i] = keyboard_check(ky_control_select);
				global.controlSelectPressed[i] = keyboard_check_pressed(ky_control_select);
				global.controlSelectReleased[i] = keyboard_check_released(ky_control_select);
				
				global.controlBack[i] = keyboard_check(ky_control_back);
				global.controlBackPressed[i] = keyboard_check_pressed(ky_control_back);
				global.controlBackReleased[i] = keyboard_check_released(ky_control_back);
				
				global.controlShoot[i] = mouse_check_button(ky_control_shoot);
				global.controlShootPressed[i] = mouse_check_button_pressed(ky_control_shoot);
				global.controlShootReleased[i] = mouse_check_button_released(ky_control_shoot);
				
				global.controlLook[i] = mouse_check_button(ky_control_look);
				global.controlLookPressed[i] = mouse_check_button_pressed(ky_control_look);
				global.controlLookReleased[i] = mouse_check_button_released(ky_control_look);
				
				global.controlReload[i] = keyboard_check(ky_control_reload);
				global.controlReloadPressed[i] = keyboard_check_pressed(ky_control_reload);
				global.controlReloadReleased[i] = keyboard_check_released(ky_control_reload);
				
				global.controlPickup[i] = keyboard_check(ky_control_pickup);
				global.controlPickupPressed[i] = keyboard_check_pressed(ky_control_pickup);
				global.controlPickupReleased[i] = keyboard_check_released(ky_control_pickup);
				
				global.controlPause[i] = keyboard_check(ky_control_pause);
				global.controlPausePressed[i] = keyboard_check_pressed(ky_control_pause);
				global.controlPauseReleased[i] = keyboard_check_released(ky_control_pause);

				global.controlMoveX[i] = global.controlRight[i]-global.controlLeft[i];
				global.controlMoveY[i] = global.controlDown[i]-global.controlUp[i];
				
				global.controlAim[i] = ((displayWidth/2)-window_mouse_get_x());
				
				if((instance_exists(obj_player) or instance_exists(obj_player_ghost)) and window_has_focus()){
					window_mouse_set(displayWidth/2,displayHeight/2);
					window_set_cursor(cr_none);
				}
				else{
					window_set_cursor(cr_default);	
				}
				
				
			
				break;

		}

	}
	
	else{
		
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
		
		

		if(global.controlType[0] != control_keyboard and global.controlType[1] != control_keyboard){
			global.controlType[i] = control_keyboard;	
		}
		
		else{
			global.controlType[i] = control_none;	
		}	
		
		
	}
}

