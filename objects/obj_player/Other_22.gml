/// @description throw item

global.playerAction[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent] = "throw";


//drop incactive grenade
if(!throwableActive){
	with(spawn_weapon(x,y,throwableWeapon)){
		angle = other.imageAngle;
		spd = other.throwablePower;	
	}
	
}

//throw active grenade
else{
	
	with(instance_create_depth(x,y,depth+1,weapon_get_data(weaponDataObjectCreate,throwableWeapon))){
		timer = other.throwableTime;
		angle = other.imageAngle;
		spd = other.throwablePower;
		teamNumber = other.teamNumber;
	}
	
	audio_play_sound_player(asset_get_index("snd_"+throwableWeapon),playerControl);
	
	throwableActive = false;
	throwableTime = -1;
	
	
}

throwableWeapon = "";
throwablePowerHold = false;
throwablePressed = true;
