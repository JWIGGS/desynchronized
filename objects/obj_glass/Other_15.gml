/// @description 

audio_play_sound_player(snd_glass_shatter,false);

setForDestruction = true;

top = instance_place(x,y-1,object_index);
bottom = instance_place(x,y+1,object_index);
left = instance_place(x-1,y,object_index);
right = instance_place(x+1,y,object_index);

if(instance_exists(top) and !top.setForDestruction){
	with(top){
		event_user(5);
		instance_destroy();
	}
}

if(instance_exists(bottom) and !bottom.setForDestruction){
	with(bottom){
		event_user(5);
		instance_destroy();
	}
}

if(instance_exists(left) and !left.setForDestruction){
	with(left){
		event_user(5);
		instance_destroy();
	}
}

if(instance_exists(right) and !right.setForDestruction){
	with(right){
		event_user(5);
		instance_destroy();
	}
}

instance_destroy();
