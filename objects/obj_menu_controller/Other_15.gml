/// @description settings step

//////////////////////////////
//							//
//			STEP			//
//							//
//////////////////////////////

//up
if(upPressed){
	settingsSelected--;
	audio_play_sound(snd_blip,0,false);
}
				
//down
if(downPressed){
	settingsSelected++;
	audio_play_sound(snd_blip,0,false);

}
		
		
//wrap selection
settingsSelected = clamp(settingsSelected,0,settingsAmount-1);
				

//selection actions

if(selectPressed){
	switch(settingsSelected){
					
		//audio
		case 0:
						
			menuScreen = "settings audio";	
			audio_play_sound(snd_selected,1,false);	
				
			break;
					
		//graphics
		case 1:
					
			menuScreen = "settings graphics";	
			audio_play_sound(snd_selected,1,false);	
							
			break;
						
		//input
		case 2:
					
			menuScreen = "settings input";	
			audio_play_sound(snd_selected,1,false);	
						
		
	}

}
		
		
//go back to menu
if(backPressed){
	
	menuScreen = "main";	
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
	
//menu text
for(var i = 0; i<settingsAmount; i++){
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
			
	if(i = settingsSelected){
		
		draw_text_transformed(displayWidth/2,144 + (64*i),"- "+settingsText[i]+" -",wave(1.25,1.5,1.5,0),wave(1.25,1.5,1.5,0),0);	
		
		draw_text_formatting(c_white,fa_center,fa_middle,font_12);
		draw_text(displayWidth/2,144 +24+ (64*i),settingsDescription[i]);
	
	}
	else{
		draw_text(displayWidth/2,144 + (64*i),settingsText[i]);
	}
	
	
}


