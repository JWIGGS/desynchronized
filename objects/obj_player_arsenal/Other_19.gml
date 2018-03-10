/// @description reload gun

reloading = true;
alarm[0] = weapon_get_data(weaponDataReloadTime,weapon);
	
reloadingSound = audio_play_sound(asset_get_index("snd_"+weapon+"_reload"),1,false);
	
