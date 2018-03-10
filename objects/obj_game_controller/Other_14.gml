/// @description pause menu control

for(var i = 0; i<global.players; i++){
	if(gamepad_is_connected(i)){
		
		if(gamepad_button_check_pressed(i,gp_start)){
			
			instance_create_depth(0,0,depth,obj_pause_controller);
			
		}

	}
}