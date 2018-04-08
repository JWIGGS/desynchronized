/// @description pause menu control

for(var i = 0; i<global.players; i++){

	if(global.controlPausePressed[i]){
			
		instance_create_depth(0,0,depth,obj_pause_controller);
			
	}

}