/// @description simulated weapon pickup

//check if reloading
if(reloading){
	audio_stop_sound(reloadingSound);
	reloadingSound = -1;
	reloading = false;
}

alarm[0] = -1;

weaponPickedUp = true;
	
//get clip size
clipSize = weapon_get_data(weaponDataClip,weapon);
clipCurrent = clipSize;



