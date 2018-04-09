/// @description trigger

var nearestPlayer = instance_nearest(x,y,obj_player);

if(nearestPlayer = noone){
	instance_destroy();	
}
else if(point_distance(x,y,nearestPlayer.x,nearestPlayer.y)<16 and nearestPlayer.teamNumber!=teamNumber and alarm[0] =-1){
	alarm[0] = 60;
	audio_play_sound_player(snd_mine_warning,true);
}

