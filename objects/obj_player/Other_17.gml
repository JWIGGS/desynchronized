/// @description force desync due to discrepancy 


if(global.timeCurrent>1){
	for(var i = global.timeCurrent-1; i<global.timeTotal; i++){
		global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),i] = "desync";
		
		global.playerEndHealth[value_to_1d(playerNumber,teamNumber,global.roundTotal)] = hp;
		
		instance_destroy();
	}
}