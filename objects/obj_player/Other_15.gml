/// @description die script

//set timeline to just died
for(var i = global.timeCurrent; i<global.timeTotal; i++){
	global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),i] = "just died";	
}

//drop weapon on death
spawn_weapon(x,y,weapon);

//drop thrown weapon on death
if(throwableWeapon != ""){
	if(throwableActive){
		//drop active throwable weapon
		throwablePower = 0;
		event_user(12);
	}
	else{
		spawn_weapon(x,y,throwableWeapon);	
	}
}


//create ragdoll
with(instance_create_depth(x,y,0,obj_player_ragdoll)){
	image_index = other.teamNumber;
	image_angle = point_direction(other.shotFromX,other.shotFromY,other.x,other.y);
}

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
	}
}

audio_play_sound_player(snd_death,playerControl);



//destroy player
instance_destroy();

