/// @description prime
if(!throwableActive){
	
	throwableActive = true;
	throwableTime = weapon_get_data(weaponDataReloadTime,throwableWeapon);
	
	audio_play_sound(asset_get_index("snd_"+throwableWeapon+"_reload"),1,false);

}



