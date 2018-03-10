/// @description throw item

global.playerAction[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent] = "throw";


//drop incactive grenade
if(!throwableActive){
	with(spawn_weapon(x,y,throwableWeapon)){
		angle = other.imageAngle;
		spd = other.throwablePower;	
	}
	throwableWeapon = "";
}

//throw active grenade
else{
	
	with(instance_create_depth(x,y,depth+1,weapon_get_data(weaponDataObjectCreate,throwableWeapon))){
		timer = other.throwableTime;
		angle = other.imageAngle;
		spd = other.throwablePower;
	}
	
	audio_play_sound(asset_get_index("snd_"+throwableWeapon),1,false);
	
	throwableWeapon = "";
	throwableActive = false;
	throwableTime = -1;
	
	
}

throwablePressed = true;
