/// @description end round

//destroy remaining players
array_fill_1d(global.playerControlObject,global.players,-1);

//set the end health if players alive
with(obj_player){
	global.playerEndHealth[value_to_1d(playerNumber,teamNumber,global.roundTotal)] = hp;
	
	
	instance_destroy();
	
	
}

//despawn weapons
with(obj_weapon){
	instance_destroy();
}


for(var i = 0; i<global.roundTotal*global.players; i++){
	
	//replace just died with died
	for(var j = 0; j<global.timeTotal; j++){
		if(global.playerMode[i,j] = "just died"){
			global.playerMode[i,j] = "dead";	
		}
		
		//wipe player actions
		if(global.playerMode[i,j] = "desync"){
			global.playerAction[i,j] = "";
		}
		
	}

}


//check if one team is dead
for(var i = 0; i<global.players; i++){
	
	var oneTeamDead = true;
	
	for(var j = 0; j<global.roundTotal; j++){
		if(global.playerMode[value_to_1d(j,i,global.roundTotal),global.timeMax]!="dead"){
			oneTeamDead = false;
		}
	}
	
	if(oneTeamDead){
		overviewRound = true;
		i = global.players;
	}
}


//restart room
room_restart();







