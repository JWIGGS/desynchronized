/// @description go to game

global.mode = "fade out";

with(obj_fade_controller){
	//start fade
	event_user(0);
}
with(obj_background_controller){
	//cut sound
	event_user(2);
	
}