/// @description actions control

//reload cancellling
/*
if(gamepad_button_check_pressed(teamNumber,gp_shoulderr) and reloading and clipCurrent>0){
	reloading = false;
	alarm[0] = -1;
	audio_stop_sound(reloadingSound);
	reloadingSound = -1;
}
*/

//reset gamepad hold from throw
if(!throwablePowerHold or gamepad_button_check_released(teamNumber,gp_shoulderr)){
	throwablePressed = false;
}

//shooting control
if(alarm[0] = -1 and !throwablePressed){
	
	//has weapon
	if(throwableWeapon = ""){
		if(weapon_get_data(weaponDataAutofire,weapon)){
			if(gamepad_button_check(teamNumber,gp_shoulderr) and (clipCurrent>0 or clipSize=0)){
				//shoot
				event_user(3);
				exit;
			}
		}
		else{
			if(gamepad_button_check_pressed(teamNumber,gp_shoulderr) and (clipCurrent>0 or clipSize = 0)){
				//shoot
				event_user(3);
				exit;
			
			}
		}
	}
	//has throwable
	else{
		
		if(gamepad_button_check_pressed(teamNumber,gp_shoulderr)){
			throwablePowerHold = true;
			throwablePower = 0;
		}
		
		if(throwablePowerHold and gamepad_button_check(teamNumber,gp_shoulderr)){
			throwablePower = clamp(throwablePower+throwablePowerAccel,0,throwablePowerMax);	
		}
		
		if(gamepad_button_check_released(teamNumber,gp_shoulderr)){
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
	if(gamepad_button_check_pressed(teamNumber,gp_shoulderl)){
		event_user(6);
	}

	//manual reload
	if(!weaponPickedUp and !reloading){
		if(gamepad_button_check_pressed(teamNumber,gp_shoulderl) and clipCurrent!=clipSize){
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
	if(gamepad_button_check_pressed(teamNumber,gp_shoulderl)){
		event_user(13);
		exit;
	}	
	
}

//player trail

if(global.settingsTrailPlayer){
	
	with(instance_create_depth(x,y,depth,obj_player_trail)){
		imageAngle = other.imageAngle;
		playerNumber = other.playerNumber;
		teamNumber = other.teamNumber;
		weapon = other.weapon;
		throwableWeapon = other.throwableWeapon;
	}
}






