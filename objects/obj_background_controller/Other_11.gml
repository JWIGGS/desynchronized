/// @description evaluate dynamic of track

dynamicPrev = dynamic;

dynamic = clamp(dynamic + dynamicDirection,2,sndAmount);

if(dynamic != dynamicPrev){
	
	//force change of dynamic direction
	if(dynamic<2){
		dynamicDirection = 1;;
	}

	
	if(dynamic>dynamicPrev){
		//increase dynamic
		event_user(5);
		
	}
	else if(dynamic<dynamicPrev){
		
		
		//drecrease dynamic
		event_user(4);

	}

}
else{
	dynamicDirection = -sign(dynamicDirection);
	
	
	//random drop
	if(dynamicDirection < 0 and random_chance(.5)){
		for(var i = 0; i<sndAmount; i++){
			if(random_chance(.5)){
				audio_stop_sound(global.soundBackgroundId[i]);
				global.soundBackgroundId[i] = -1;
			}
		}
		
		//reset dynamic
		event_user(6);
	}
	
	//random increase
	if(dynamicDirection < 0 and random_chance(.5) and dynamic<5){
		for(var i = 0; i<sndAmount; i++){
			if(random_chance(.5) and global.soundBackgroundId[i] = -1){
				sound_background_play(i);
		
				audio_sound_set_track_position(global.soundBackgroundId[i],loopOffset);
			}
		}
		//reset dynamic
		event_user(6);
	}
	
}
