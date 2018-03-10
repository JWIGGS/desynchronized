/// @description calculate start of each loop

if(global.soundBackgroundId[sndBloop]!=-1){
	if(audio_sound_get_track_position(global.soundBackgroundId[sndBloop])>audio_sound_length(global.soundBackgroundId[sndBloop])-1){
		loopTriggered = false;	
	}
	else if(audio_sound_get_track_position(global.soundBackgroundId[sndBloop])<1 and !loopTriggered){
		loopTriggered = true;
		loopOffset = audio_sound_get_track_position(global.soundBackgroundId[sndBloop]);
			
		event_user(3);
			
	}
	
	i = sndAmount;
		
}





