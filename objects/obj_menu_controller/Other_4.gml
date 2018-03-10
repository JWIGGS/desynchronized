/// @description fade in

global.mode = "fade in";

with(obj_fade_controller){
	//execute fade
	event_user(0);	
}
with(obj_background_controller){
	//start track
	event_user(0);
}