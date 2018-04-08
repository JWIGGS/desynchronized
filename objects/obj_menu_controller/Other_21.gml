/// @description input settings

//////////////////////////////
//							//
//			STEP			//
//							//
//////////////////////////////

	
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
draw_text(displayWidth/2,64,"settings");



