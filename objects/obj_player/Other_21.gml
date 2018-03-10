/// @description hit script


if(alarm[2] = -1){
	
	//mpph sound
	audio_play_sound_player(choose(snd_hurt1,snd_hurt2,snd_hurt3,snd_hurt4,snd_hurt5,snd_hurt6,snd_hurt7,snd_hurt8,snd_hurt9,snd_hurt10),playerControl);	
	alarm[2] = 15;
	
	//small blood splat
	if(weapon!="shield"){
		repeat(irandom_range(2,15)){
			with(instance_create_depth(x,y,depth,obj_blood)){
				image_angle = random_range(0,360);	
			}
		}
	}
	
	//screen shake
	if(global.mode = "play" and playerControl){
		global.cameraObject[teamNumber].alarm[0] = 3;
	}
	
}