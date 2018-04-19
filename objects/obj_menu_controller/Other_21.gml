/// @description input settings

//////////////////////////////
//							//
//			STEP			//
//							//
//////////////////////////////

var controlAmountTotal = 0;

for(var i = 0; i<controlAmount; i++){
	if(global.controlAvailable[i]){
		controlAmountTotal ++;	
	}
}

for(var i = 0; i<2; i++){
	if(global.controlUpPressed[i] or global.controlDownPressed[i] or global.controlLeftPressed[i] or global.controlRightPressed[i] or global.controlSelectPressed[i]){
			
		var colorSelectedPrev = global.colorSelected[i];
			
		do{
			global.colorSelected[i] = irandom_range(0,global.colorChoiceAmount-1);
		}
		until(global.colorSelected[i] != global.colorSelected[1-i] and global.colorSelected[i] != colorSelectedPrev);
			
		global.color[i] = global.colorChoice[global.colorSelected[i]];
			
		audio_play_sound(snd_selected,0,false);
	}

}



//go back to menu
if(backPressed){
	
	menuScreen = "settings";		
	audio_play_sound(snd_selected,1,false);
			
}


//////////////////////////////
//							//
//			DRAW			//
//							//
//////////////////////////////


//title
draw_text_formatting(c_white,fa_center,fa_middle,font_36);
draw_text(displayWidth/2,64,"input settings");

draw_text_formatting(c_white,fa_center,fa_middle,font_12);
draw_text(displayWidth/2,94,"drag player icons to inputs");

var pos = 0;
for(var i = 0; i<controlAmount; i++){
	if(global.controlAvailable[i]){
		var hover = false;
		hover = point_in_rectangle(mouse_x,mouse_y,(displayWidth/2)-128-((controlAmountTotal*256)/2) + ((pos+1)*256)-96,192-96,(displayWidth/2)-128-((controlAmountTotal*256)/2) + ((pos+1)*256)+96,192+96);
			
		var playerNumber = -1;
		for(var j = 0; j<2;j++){
			if(global.controlType[j] = i){
				playerNumber = j
				break;
			}
		}
		
		if(mouse_check_button_pressed(mb_left) and hover and playerNumber!=-1){

			settingsControlGrabFrom = i;
			settingsControlGrabPlayer = playerNumber;
			
			audio_play_sound(snd_blip,1,false);
			

		}
		
		
		
		if(mouse_check_button_released(mb_left) and hover and settingsControlGrabPlayer!=-1){
			
			if(hover and settingsControlGrabFrom!=i){
				
				if(playerNumber = -1){
					global.controlType[settingsControlGrabPlayer] = i;
					changed = true;
				}
				else{
					global.controlType[1-settingsControlGrabPlayer] = settingsControlGrabFrom;
					global.controlType[settingsControlGrabPlayer] = i;
				}
				
				
				global.controlSaved[0] = global.controlType[0];
				global.controlSaved[1] = global.controlType[1];
				
				ini_open(global.saveFile);
				ini_write_real("_settings","control0",global.controlType[0]);
				ini_write_real("_settings","control1",global.controlType[1]);
				ini_close();
				
				audio_play_sound(snd_selected,1,false);	
			}
			else{
				audio_play_sound(snd_alarm_double,1,false);	
			}
			settingsControlGrabPlayer = -1;
			settingsControlGrabFrom = -1;

		}
		
		
		
		if(playerNumber!=-1){
			if(settingsControlGrabPlayer=playerNumber){
				draw_sprite_ext(spr_player_indicator,0,mouse_x,mouse_y,wave(4.8,5.2,3,0),wave(4.8,5.2,3,0),0,global.color[playerNumber],.5);
			}
			else {
				draw_sprite_ext(spr_player_indicator,0,(displayWidth/2)-128-((controlAmountTotal*256)/2) + ((pos+1)*256),192,wave(4.8,5.2,3,0),wave(4.8,5.2,3,0),0,global.color[playerNumber],.5);
			}
		}
		
		
		
		
		draw_sprite_ext(spr_ui_control,i,(displayWidth/2)-128-((controlAmountTotal*256)/2) + ((pos+1)*256),192,1+(.25*hover),1+(.25*hover),0,c_white,1);
		if(i<2){
			draw_text_formatting(c_white,fa_center,fa_middle,font_24);
			draw_text((displayWidth/2)-128-((controlAmountTotal*256)/2) + ((pos+1)*256),192,string(i+1))
		}
		
		pos++;	
	}
}



for(var i = 0; i<2; i++){
	
	var uiCenterX = (displayWidth/4)*((i*2)+1);
	var uiCenterDirection = 1-(i*2);
	
	var drawY = 288;
	var drawX = uiCenterX-128;
	
	//name
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
	draw_text(uiCenterX,drawY,global.controlText[global.controlType[i]]);
	drawY += 64;
			
	if(global.controlType[i]!= control_bot_easy and global.controlType[i] != control_bot_hard){	
		
		for(var j = 0; j<9; j++){
			//type
			
			if(j=4){
				drawX = uiCenterX;
			}
			
			draw_text_formatting(c_white,fa_center,fa_middle,font_24);
			draw_text(drawX,drawY,global.controlDisplayText[global.controlType[i],j]);
			drawY += 28;
			draw_text_formatting(c_white,fa_center,fa_middle,font_12);
			draw_text(drawX,drawY,global.controlDisplayDescription[j]);
			drawY += 48;
			
			if(j=4){
				drawX = uiCenterX+128;
				drawY -= (28+48)*5;
			}
			
			
		}
	
	}
	
}





