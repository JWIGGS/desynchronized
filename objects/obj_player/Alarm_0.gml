/// @description rof alarm


if(reloading){
	clipCurrent = clipSize;
	reloading = false;
	reloadingSound = -1;
	if(playerControl){
		audio_play_sound(snd_blip,1,false);	
	}
}