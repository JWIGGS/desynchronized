/// @description tutorial menu

//////////////////////////////
//							//
//			STEP			//
//							//
//////////////////////////////


//back to menu
if(backPressed){		
	menuScreen = "main";			
	audio_play_sound(snd_selected,1,false);
}


//up
if(leftPressed){
	tutorialScreen--;
	audio_play_sound(snd_blip,0,false);
}
//down
if(rightPressed or selectPressed){
	tutorialScreen++;
	audio_play_sound(snd_blip,0,false);
}

//wrap pages
tutorialScreen = wrap(tutorialScreen,0,tutorialScreenAmount);

//////////////////////////////
//							//
//			DRAW			//
//							//
//////////////////////////////

//title
draw_text_formatting(c_white,fa_center,fa_middle,font_36);
draw_text(displayWidth/2,128,tutorialTitle[tutorialScreen]);

//tutorial pages
switch(tutorialScreen){
	
	//controls overlay on gamepad
	case 0:
		draw_sprite(spr_ui_gamepad,0,displayWidth/2,displayHeight/2);
		
		draw_text_formatting(c_white,fa_center,fa_middle,font_24);
		draw_text(590,448,"aim");
		
		draw_text(380,380,"move");
		
		draw_text_formatting(c_white,fa_left,fa_middle,font_24);
		draw_text(672,212,"shoot");
		
		draw_text_formatting(c_white,fa_right,fa_middle,font_24);
		draw_text(352,212,"pickup/reload");
		
		break;
		
		
	//rules
	case 1:
	
		draw_text_formatting(c_white,fa_left,fa_middle,font_16);
		
		for(var i = 0; i<rulesTextAmount; i++){
			
			draw_text_ext(128,256+(i*64),rulesText[i],24,768);
			
		}
	
		break;
	
	
	
	
}