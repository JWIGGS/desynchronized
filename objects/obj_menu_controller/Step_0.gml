/// @description menu screens

//player responsiveness
for(var i = 0; i<2; i++){
	
	if(gamepad_is_connected(i)){
		
		playerResponseTargetX[i] += smooth_to_target(playerResponseX[i]+(gamepad_axis_value(i,gp_axislh)*playerResponseMovement),playerResponseTargetX[i],5); 	
		playerResponseTargetY[i] += smooth_to_target(playerResponseY[i]+(gamepad_axis_value(i,gp_axislv)*playerResponseMovement),playerResponseTargetY[i],5);
		

		if(abs(gamepad_axis_value(i,gp_axisrh))>(gamepad_deadzone*5) or abs(gamepad_axis_value(i,gp_axisrv))>(gamepad_deadzone*5)){

			playerResponseAngle[i] = round(point_direction(0,0,gamepad_axis_value(i,gp_axisrh),gamepad_axis_value(i,gp_axisrv)))-90;

				if(playerResponseAngle[i]>180){
					playerResponseAngle[i] -= 360;	
				}

				playerResponseTargetAngle[i] += smooth_to_target(playerResponseAngle[i],playerResponseTargetAngle[i],5);
		
		}
	
		else{
			playerResponseTargetAngle[i] += smooth_to_target(0,playerResponseTargetAngle[i],5);
		}
		
		playerResponseSize[i] = 10;

	}

}

//reset player input
upPressed = false;
downPressed = false;
leftPressed = false;
rightPressed = false;
selectPressed = false;
backPressed = false;

//gamepad input
for(var i = 0; i<2; i++){
	
	if(gamepad_is_connected(i)){
	
		//up
		if(gamepad_axis_value(i,gp_axislv)>(gamepad_deadzone*5)){
			if(alarm[i] = -1){
				upPressed = true;
				alarm[i] = 10;
			}
		}
		//down
		else if(gamepad_axis_value(i,gp_axislv)<(-gamepad_deadzone*5)){
			if(alarm[i] = -1){
				downPressed = true;
				alarm[i] = 10;
			}
		}
		//left
		else if(gamepad_axis_value(i,gp_axislh)<(-gamepad_deadzone*5)){
			if(alarm[i] = -1){
				leftPressed = true;
				alarm[i] = 10;
			}
		}
		//right
		else if(gamepad_axis_value(i,gp_axislh)>(gamepad_deadzone*5)){
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
		
		selectPressed = gamepad_button_check_pressed(i,gp_face1) or selectPressed;
		backPressed = gamepad_button_check_pressed(i,gp_face2) or backPressed;
	
	}
}

//keyboard input
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






