/// @description pick up items
var weaponPickup = instance_nearest(x,y,par_pickupable);

if(instance_exists(weaponPickup) and distance_to_object(weaponPickup)<16){
	global.playerAction[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent] = "pickup";


	
	switch(weapon_get_data(weaponDataType,weaponPickup.weapon)){
		case "weapon":
			spawn_weapon(x,y,weapon);
			weapon = weaponPickup.weapon;
		
	
			//get clip size
			clipSize = weapon_get_data(weaponDataClip,weapon);
			clipCurrent = 0;
			
			break;
			
		case "throwable":
			throwableWeapon = weaponPickup.weapon;

			if(weaponPickup.timer !=-1){
				throwableActive = true;
				throwableTime = weaponPickup.timer;
			}


			break;
	
	}
	
	//check if reloading
	if(reloading){
		audio_stop_sound(reloadingSound);
		reloadingSound = -1;
		reloading = false;
		alarm[0] = -1;
	}

	
	
	
	weaponPickedUp = true;
	
	//destroy weapon pickup
	with(weaponPickup){
		instance_destroy();	
	}
	

}

