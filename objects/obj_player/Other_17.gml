/// @description force desync due to discrepancy 



for(var i = global.timeCurrent+1; i<global.timeTotal; i++){
	global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),i] = "desync";

}
	
global.playerEndHealth[value_to_1d(playerNumber,teamNumber,global.roundTotal)] = hp;
global.playerEndWeapon[value_to_1d(playerNumber,teamNumber,global.roundTotal)] = weapon;
global.playerEndAmmo[value_to_1d(playerNumber,teamNumber,global.roundTotal)] = clipCurrent;

	
instance_destroy();


