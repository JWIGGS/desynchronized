/// @description start round
global.timeCurrent = 0;

//reset player control and round variables
array_fill_1d(global.playerSelectionReady,global.players,false);
array_fill_1d(global.playerSelection,global.players,0);

array_fill_1d(global.playerAliveCount,global.roundTotal*global.players,false);
array_fill_1d(global.playerDesyncCount,global.roundTotal*global.players,false);

//increase current round
global.roundCurrent++;


//spawn all players needed for match
with(obj_player_spawner){
	if(spawnNumber<global.roundTotal){
		
		spawnOverview = other.overviewRound;

		event_user(0);
		
		
	}
	
}

//spawn weapons
with(obj_weapon_spawner){
	event_user(0);	
}
