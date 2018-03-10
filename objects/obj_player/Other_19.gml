/// @description reload gun

global.playerAction[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent] = "reload";

reloading = true;
alarm[0] = weapon_get_data(weaponDataReloadTime,weapon);
	
reloadingSound = audio_play_sound_player(asset_get_index("snd_"+weapon+"_reload"),playerControl);
	
