/// @description decrease dynamic

var tries = 0;
var hasRemoved = false;
while(!hasRemoved){
			
	var removeSnd = choose(sndArpeg,sndBass,sndDrum,sndLaser,sndLoop,sndMelody,sndMelody,sndLaser);
			
	if(global.soundBackgroundId[removeSnd]!=-1){
		hasRemoved = true;
		audio_stop_sound(global.soundBackgroundId[removeSnd]);
		global.soundBackgroundId[removeSnd] = -1;
				
	}
	else{
		tries++;
		if(tries>50){
			hasRemoved = true;
		}
	}
		
			
}
