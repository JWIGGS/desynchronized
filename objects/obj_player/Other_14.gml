/// @description synchronize to global

switch(global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent]){
	case "desync":
		//write life
		if(playerControl){
			global.playerX[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent] = x;
			global.playerY[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent] = y;
			global.playerRotation[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent] = imageAngle;
			global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent] = "alive";
			global.playerWeapon[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent] = weapon;
			global.playerThrowable[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent] = throwableWeapon;
			global.playerThrowablePower[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent] = throwablePower;
		
		}
		else{
			//create desync animation
			event_user(8);
			//desync due to end of previous round
			instance_destroy();	
		}
	
		break;
	
	
	case "alive":
		
	
		//playback life
		x = global.playerX[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent];
		y = global.playerY[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent];
		imageAngle = global.playerRotation[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent];
		

		
		//check for weapon or throwable discrepancy
		if(global.timeCurrent>1){
			
			if(weapon != global.playerWeapon[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent-1] or throwableWeapon != global.playerThrowable[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent-1]){
			
				//force desync
				event_user(7);
				//create desync animation
				event_user(8);
				exit;
			
			}
		}
		
		
		//execute actions
		switch(global.playerAction[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent]){
			case "shoot":
				event_user(3);
				break;
			case "pickup":
				event_user(6);
				break;
			case "reload":
				event_user(9);
				break;
			case "throw":
				throwablePower = global.playerThrowablePower[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent];
				event_user(12);
				break;
			case "prime":
				event_user(13);
				break;
		}
		
		

		//check for walking through walls
		if(place_meeting(x,y,par_collideable) or place_meeting(x,y,par_indestructable)){
			
			//force desync
			event_user(7);
			//create desync animation
			event_user(8);
			exit;
		}
		
		
		
		

		
		break;
	case "just died":
	
		break;
	case "dead":
	
		//was dead but is not dead anymore
		if(!playerControl and global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent-1] = "dead"){
			for(var i = global.timeCurrent-1; i<global.timeTotal; i++){
				global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),i] = "desync";
			}
			//create desync animation
			event_user(8);
			
			instance_destroy();
		}
	
		break;
}



