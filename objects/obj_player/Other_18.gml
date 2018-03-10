/// @description create desync effect


if(!obj_game_controller.overviewRound){
	
	repeat(4){
		with(instance_create_depth(x,y,depth,obj_player_desync)){
			image_angle = other.imageAngle;
			sprite_index = asset_get_index("spr_player_"+other.weapon);
			teamNumber = other.teamNumber;
		}
	
	}
	

	if(reloading){
		audio_stop_sound(reloadingSound);	
	}
	

	audio_play_sound_player(snd_desync,global.timeCurrent>1);
	

	
	
}
else{
	with(instance_create_depth(x,y,depth,obj_player_desync_overview)){
		image_angle = other.imageAngle;
		sprite_index = asset_get_index("spr_player_"+other.weapon);
		image_index = other.teamNumber;
	}
}
