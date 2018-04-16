/// @description trigger

var nearestPlayer = instance_nearest(x,y,obj_player);

if(nearestPlayer = noone){
	instance_destroy();	
}
else if(point_distance(x,y,nearestPlayer.x,nearestPlayer.y)<32 and nearestPlayer.teamNumber!=teamNumber and alarm[0] =-1){
	alarm[0] = 30;
	audio_play_sound_player(snd_mine_warning,true);
}

