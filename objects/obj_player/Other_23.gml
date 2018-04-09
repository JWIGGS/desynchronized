/// @description prime throwable item


if(!throwableActive){
	global.playerAction[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent] = "prime";
	
	throwableActive = true;
	throwableTime = weapon_get_data(weaponDataReloadTime,throwableWeapon);
	
	audio_play_sound_player(asset_get_index("snd_"+throwableWeapon+"_reload"),playerControl);

}



