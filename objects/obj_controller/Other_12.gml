/// @description game end shortcuts


//quit time hold to exit, press to restart
if(keyboard_check(vk_escape)){
	quitTime++;
}
else{
	quitTime = 0;
}

if(quitTime>180){
	game_end();	
}
else if(keyboard_check_released(vk_escape)){
	game_restart();	
}
