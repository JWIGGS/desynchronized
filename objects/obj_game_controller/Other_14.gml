/// @description pause menu control
var pause = false;

for(var i = 0; i<global.players; i++){
	if(global.controlPausePressed[i]){		
		pause = true;
	}
}

pause = pause or keyboard_check_pressed(vk_escape);

if(pause){
	instance_create_depth(0,0,depth,obj_pause_controller);	
}