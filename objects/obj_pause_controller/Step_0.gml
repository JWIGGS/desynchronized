/// @description menu controls
upPressed = false;
downPressed = false;
leftPressed = false;
rightPressed = false;
selectPressed = false;
backPressed = false;

for(var i = 0; i<2; i++){
	
	
	//up
	if(global.controlUp[i]){
		if(alarm[i] = -1){
			upPressed = true;
			alarm[4] = -1;
			alarm[i] = 10;
		}
	}
	//down
	else if(global.controlDown[i]){
		if(alarm[i] = -1){
			downPressed = true;
			alarm[4] = -1;
			alarm[i] = 10;
		}
	}
	//left
	else if(global.controlLeft[i]){
		if(alarm[i] = -1){
			leftPressed = true;
			alarm[4] = -1;
			alarm[i] = 10;
		}
	}
	//down
	else if(global.controlRight[i]){
		if(alarm[i] = -1){
			rightPressed = true;
			alarm[4] = -1;
			alarm[i] = 10;
		}
	}
	else{
		alarm[i] = -1;
	}
		
	//select pressed
		
	selectPressed = global.controlSelectPressed[i] or selectPressed;
		
	backPressed = global.controlBackPressed[i] or backPressed;
	

}

if(upPressed){
	pauseSelected --;
	audio_play_sound(snd_blip,0,false);
}
if(downPressed){
	pauseSelected ++;
	audio_play_sound(snd_blip,0,false);
}

pauseSelected = wrap(pauseSelected,0,pauseTextAmount);


if(selectPressed){

	switch(pauseSelected){

		//resume game
		case 0: 
			instance_activate_all();
			audio_resume_all();
			instance_destroy();
			break;
			
		//back to menu
		case 1:
			instance_activate_all();
			audio_resume_all();
			audio_stop_all();
			
			global.mode = "fade out";
			with(obj_fade_controller){
				event_user(0);	
			}
			with(obj_game_controller){
				gameOver = true;
			}
			
			instance_destroy();
			
			break;

	}
	
	audio_play_sound(snd_selected,1,false);
	
}

