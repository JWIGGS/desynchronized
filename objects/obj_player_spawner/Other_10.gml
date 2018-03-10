/// @description trigger spawns
with(instance_create_depth(x,y,depth,obj_player)){
	teamNumber = other.spawnTeam;
	playerNumber = other.spawnNumber;
	imageAngle = other.image_angle;
	
	if(playerNumber = 0){
		playerControl = true;
	}
	
	weapon = global.weaponPlayerSpawn[playerNumber];
	clipSize = weapon_get_data(weaponDataClip,weapon);
	clipCurrent = clipSize;
	
	
	if(!other.spawnOverview){
		if(global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),1] = "alive"){
			for(var i = 1; i<global.timeMax-1; i++){
				if(global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),i] = "desync"){
					resyncTime = i;
					i = global.timeMax;
				}
			}
		
			if(resyncTime = -1){
				if(global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeMax-1] != "dead"){
					resyncTime = global.timeMax;
				}
			}
		
		}
	
		if(playerControl){
			global.playerControlObject[teamNumber] = id;	
		}
	}
	else{
		playerControl = false;	
	}

	
}

