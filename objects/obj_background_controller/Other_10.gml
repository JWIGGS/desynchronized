/// @description start new track

randomize();

dynamic = 2;
dynamicDirection = 1;
dynamicPrev = dynamic;

var hasSound = false;
for(var i = 0; i<sndAmount; i++){
	if (global.soundBackgroundId[i]!=-1){
		hasSound = true;	
	}
}

if(hasSound){
	//stop sound before assigning
	event_user(2);	
}


array_fill_1d(global.soundBackgroundId,sndAmount,-1);

sound_background_play(sndBloop);
sound_background_play(sndDloop);

