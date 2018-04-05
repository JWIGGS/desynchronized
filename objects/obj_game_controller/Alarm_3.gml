/// @description desync player

with(obj_player){
	if(playerControl){
		
		//force player desync
		event_user(7);
		
		//create desync effect
		event_user(8);
		
		
		//stop reloading
		if(reloading){
			audio_stop_sound(reloadingSound);
		}

		//create ghost for camera to follow
		if(playerControl){
			with(instance_create_depth(x,y,0,obj_player_ghost)){
				teamNumber = other.teamNumber;
				global.playerControlObject[teamNumber] = id;
				imageAngle = other.imageAngle;
				status = "desynchronized";
			}
		}
		
		
	}
}
