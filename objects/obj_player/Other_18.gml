/// @description create desync effect


if(!obj_game_controller.overviewRound){
	
	repeat(4){
		with(instance_create_depth(x,y,depth,obj_player_desync)){
			imageAngle = other.imageAngle;
			playerNumber = other.playerNumber;
			teamNumber = other.teamNumber;
			weapon = other.weapon;
			throwableWeapon = other.throwableWeapon;
		}
	
	}
	

	if(reloading){
		audio_stop_sound(reloadingSound);	
	}
	

	audio_play_sound_player(snd_desync,global.timeCurrent>1);
	

	
	
}
else{
	with(instance_create_depth(x,y,depth,obj_player_desync_overview)){
		imageAngle = other.imageAngle;
		playerNumber = other.playerNumber;
		teamNumber = other.teamNumber;
		weapon = other.weapon;
		throwableWeapon = other.throwableWeapon;
	}
}
