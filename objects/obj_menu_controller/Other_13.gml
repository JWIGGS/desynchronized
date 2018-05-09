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



//tutorial pages
switch(tutorialScreen){
	
	
	
	//controls overlay on gamepad
	case 0:
	
		//title
		draw_text_formatting(c_white,fa_center,fa_middle,font_36);
		draw_text(displayWidth/2,128,tutorialTitle[tutorialScreen]);
		
		draw_sprite(spr_ui_gamepad,0,displayWidth/2,(displayHeight/2)+100);
		
		draw_text_formatting(c_white,fa_center,fa_middle,font_24);
		draw_text(590,550,"aim");
		
		draw_text(380,484,"move");
		
		draw_text_formatting(c_white,fa_left,fa_middle,font_24);
		draw_text(572,260,"RT - shoot/throw");
		draw_text(572,300,"RB - zoom");
		
		
		draw_text_formatting(c_white,fa_right,fa_middle,font_24);
		draw_text(452,260,"LT - reload");
		draw_text(452,300,"Lb - pickup/prime");
		
		break;
		
		
	//rules
	default:

		draw_sprite_ext(spr_ui_tutorial,tutorialScreen-1,displayWidth/2,displayHeight/2,.5,.5,0,c_white,1);
	
		//title
		draw_text_formatting(c_white,fa_center,fa_middle,font_24);
		draw_text(displayWidth/2,128,tutorialTitle[tutorialScreen]);
	
		break;
	
}

