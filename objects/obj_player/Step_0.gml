/// @description trigger events
if(global.mode = "play"){

	if(playerControl and global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent] = "desync"){
	
		if(global.timeCurrent>playerNumber*60 or !global.spawnStaggered){
			//movement
			event_user(0);

			//actions control
			event_user(1);
		}

		//aiming
		event_user(2);

	}
	
	
	

}
else if(playerControl and global.mode != "flyover" and global.mode!= "selection" and global.mode!= "selection in" and global.mode!= "selection out"){
	//allow player to aim
	event_user(2);	
	
}

if(global.mode = "play" or global.mode = "overview"){
	//zone damage
	event_user(10);	
}


//throwable timer
if(throwableActive){
	throwableTime --;	
		
	if(throwableTime<=0){
		//drop throwable item (instantly activates)
		event_user(12);	
		exit;
	}
		
}

//hp effect
hpEffect += smooth_to_target(hp,hpEffect,20);





