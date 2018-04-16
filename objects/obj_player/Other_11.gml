/// @description actions control

//reset hold from throw
if(!throwablePowerHold or global.controlShootReleased[teamNumber]){
	throwablePressed = false;
}

//shooting control
if(alarm[0] = -1 and !throwablePressed){
	
	
	if(!global.controlLook[teamNumber]){
		
		//has weapon
		if(throwableWeapon = ""){
			if(weapon_get_data(weaponDataAutofire,weapon)){
				if(global.controlShoot[teamNumber] and (clipCurrent>0 or clipSize=0)){
					//shoot
					event_user(3);
					exit;
				}
			}
			else{
				if(global.controlShootPressed[teamNumber] and (clipCurrent>0 or clipSize = 0)){
					//shoot
					event_user(3);
					exit;
			
				}
			}
		}
		//has throwable
		else{
		
			if(global.controlShootPressed[teamNumber]){
				throwablePowerHold = true;
				throwablePower = 0;
			}
		
			if(throwablePowerHold and global.controlShoot[teamNumber]){
				throwablePower = clamp(throwablePower+throwablePowerAccel,0,throwablePowerMax);	
			}
		
			if(global.controlShootReleased[teamNumber]){
				//throwable interaction
				event_user(12);
				throwablePowerHold = false;
				exit;
			
			}
		}
	
	}
	
}

//has weapon
if(throwableWeapon = ""){

	//pickup weapons
	weaponPickedUp = false;
	if(global.controlPickupPressed[teamNumber]){
		event_user(6);
	}

	//manual reload
	if(!weaponPickedUp and !reloading){
		if(global.controlReloadPressed[teamNumber] and clipCurrent!=clipSize){
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
	if(global.controlReloadPressed[teamNumber]){
		event_user(13);
		exit;
	}	
	
}





