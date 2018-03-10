/// @description trigger events
if(global.mode = "play"){

		//movement
		event_user(0);

		//aiming
		event_user(2);

}

else{
	//allow player to aim
	event_user(2);	
}



