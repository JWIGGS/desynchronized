/// @description actions control

if(gamepad_button_check_pressed(teamNumber,gp_control_shoot) and reloading and clipCurrent>0){
	reloading = false;
	alarm[0] = -1;
	audio_stop_sound(reloadingSound);
	reloadingSound = -1;
}

//reset gamepad hold from throw
if(!throwablePowerHold or gamepad_button_check_released(teamNumber,gp_control_shoot)){
	throwablePressed = false;
}

//shooting control
if(alarm[0] = -1 and !throwablePressed){
	
	//has weapon
	if(throwableWeapon = ""){
		if(weapon_get_data(weaponDataAutofire,weapon)){
			if(gamepad_button_check(teamNumber,gp_control_shoot) and (clipCurrent>0 or clipSize=0)){
				//shoot
				event_user(3);
				exit;
			}
		}
		else{
			if(gamepad_button_check_pressed(teamNumber,gp_control_shoot) and (clipCurrent>0 or clipSize = 0)){
				//shoot
				event_user(3);
				exit;
			
			}
		}
	}
	//has throwable
	else{
		
		if(gamepad_button_check_pressed(teamNumber,gp_control_shoot)){
			throwablePowerHold = true;
			throwablePower = 0;
		}
		
		if(throwablePowerHold and gamepad_button_check(teamNumber,gp_control_shoot)){
			throwablePower = clamp(throwablePower+throwablePowerAccel,0,throwablePowerMax);	
		}
		
		if(gamepad_button_check_released(teamNumber,gp_control_shoot)){
			//throwable interaction
			event_user(12);
			throwablePowerHold = false;
			exit;
			
		}
	}
	
}

//has weapon
if(throwableWeapon = ""){

	//pickup weapons
	weaponPickedUp = false;
	if(gamepad_button_check_pressed(teamNumber,gp_control_pickup)){
		event_user(6);
	}

	//manual reload
	if(!weaponPickedUp and !reloading){
		if(gamepad_button_check_pressed(teamNumber,gp_control_reload) and clipCurrent!=clipSize){
			event_user(9);
		}

		//auto reload
		if(alarm[0] = -1 and clipCurrent = 0){
			//reload
			event_user(9);
		}
	}

}
//has grenade
else{
	
	//prime grenade
	if(gamepad_button_check_pressed(teamNumber,gp_control_reload)){
		event_user(13);
		exit;
	}	
	
}




