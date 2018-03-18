/// @description increase dynamic

var tries = 0;
var hasAdded = false;
while(!hasAdded){
			
	
	var addSnd = choose(sndArpeg,sndBass,sndBass,sndBass,sndDrum,sndLoop,sndDloop,sndBloop);
	
	if(dynamic>3){
		addSnd = choose(sndArpeg,sndBass,sndBass,sndDrum,sndLaser,sndLoop,sndMelody,sndDloop,sndBloop);
	}
	
	if(global.soundBackgroundId[addSnd]=-1){
		
		hasAdded = true;
				
		sound_background_play(addSnd);
		
		audio_sound_set_track_position(global.soundBackgroundId[addSnd],loopOffset);
		
		if(addSnd = sndLoop){
			event_user(5);
		}
				
	}
	else{
		tries++;
		if(tries>100){
			hasAdded = true;
			
		}
	}
	
			
}


//reset dynamic
event_user(6);