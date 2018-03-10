/// @description stop track

audio_play_sound(snd_background_stop,1,false);

for(var i = 0; i<sndAmount; i++){
	audio_stop_sound(global.soundBackgroundId[i]);	
}


array_fill_1d(global.soundBackgroundId,sndAmount,-1);
