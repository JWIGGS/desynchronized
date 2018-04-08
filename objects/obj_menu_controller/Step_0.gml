/// @description menu screens

//player responsiveness
for(var i = 0; i<2; i++){
	
	playerResponseTargetX[i] += smooth_to_target(playerResponseX[i]+(global.controlMoveX[i]*playerResponseMovement),playerResponseTargetX[i],5); 	
	playerResponseTargetY[i] += smooth_to_target(playerResponseY[i]+(global.controlMoveY[i]*playerResponseMovement),playerResponseTargetY[i],5);
		

	if(global.controlAim[i]!=0){

		playerResponseAngle[i] = global.controlAim[i];


		playerResponseTargetAngle[i] += smooth_to_target(playerResponseAngle[i],playerResponseTargetAngle[i],5);
		
	}
	
	else{
		playerResponseTargetAngle[i] += smooth_to_target(0,playerResponseTargetAngle[i],5);
	}
		
	playerResponseSize[i] = 10;

	

}

//reset player input
upPressed = false;
downPressed = false;
leftPressed = false;
rightPressed = false;
selectPressed = false;
backPressed = false;

//input
for(var i = 0; i<2; i++){
	
	//up
	if(global.controlUp[i]){
		if(alarm[i] = -1){
			upPressed = true;
			alarm[i] = 10;
		}
	}
	//down
	else if(global.controlDown[i]){
		if(alarm[i] = -1){
			downPressed = true;
			alarm[i] = 10;
		}
	}
	//left
	else if(global.controlLeft[i]){
		if(alarm[i] = -1){
			leftPressed = true;
			alarm[i] = 10;
		}
	}
	//right
	else if(global.controlRight[i]){
		if(alarm[i] = -1){
			rightPressed = true;
			alarm[i] = 10;
		}
	}
	//reset
	else{
		alarm[i] = -1;
	}
		
	//navigation buttons
		
	selectPressed = global.controlSelectPressed[i] or selectPressed;
	backPressed = global.controlBackPressed[i] or backPressed;

}

//keyboard hacking
upPressed = upPressed or keyboard_check_pressed(vk_down);
downPressed = downPressed or keyboard_check_pressed(vk_up);
leftPressed = leftPressed or keyboard_check_pressed(vk_left);
rightPressed = rightPressed or keyboard_check_pressed(vk_right);
selectPressed = selectPressed or keyboard_check_pressed(vk_enter);
backPressed = backPressed or keyboard_check_pressed(vk_rshift);




//go to game
if(global.mode = "loading"){
	room_goto(rm_game_setup);		
}

if(global.mode = "fade out finished"){
	
	with(obj_loading_controller){
		loading = true;	
	}
	global.mode = "loading";
}






