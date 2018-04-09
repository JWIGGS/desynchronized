/// @description rof alarm


if(reloading){
	clipCurrent = clipSize;
	reloading = false;
	reloadingSound = -1;
	if(playerControl){
		audio_play_sound_player(snd_blip,playerControl);	
	}
}