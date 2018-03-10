/// @description increase dynamic

var tries = 0;
var hasAdded = false;
while(!hasAdded){
			
	
	var addSnd = choose(sndArpeg,sndBass,sndBass,sndBass,sndBass,sndDrum,sndLoop);
	
	if(dynamic>4){
		
		if(room!=rm_menu){
			addSnd = choose(sndArpeg,sndBass,sndBass,sndBass,sndDrum,sndLaser,sndLoop,sndMelody,sndBass);
		}
	}
	
	
	
	if(global.soundBackgroundId[addSnd]=-1){
				
		hasAdded = true;
				
		sound_background_play(addSnd);
		
		audio_sound_set_track_position(global.soundBackgroundId[addSnd],loopOffset);
				
	}
	else{
		tries++;
		if(tries>50){
			hasAdded = true;
			
		}
	}
	
			
			
			
			
}