/// @description graphics settings

//////////////////////////////
//							//
//			STEP			//
//							//
//////////////////////////////

//up
if(upPressed){
	settingsGraphicsSelected--;
	audio_play_sound(snd_blip,0,false);
}
				
//down
if(downPressed){
	settingsGraphicsSelected++;
	audio_play_sound(snd_blip,0,false);

}
		
		
//wrap selection
settingsGraphicsSelected = wrap(settingsGraphicsSelected,0,settingsGraphicsAmount);
				
				
//selection actions			
switch(settingsGraphicsSelected){

						
	//fullscreen
	case 0:
					
		if(leftPressed or rightPressed or selectPressed){
			global.settingsFullscreen = !global.settingsFullscreen;
			window_set_fullscreen(global.settingsFullscreen);
			
			ini_open(global.saveFile);
			ini_write_real("_settings","fullscreen",global.settingsFullscreen);
			ini_close();
			
			audio_play_sound(snd_blip,0,false);
		}
					
		break;
						
	//pretty
	case 1:
						
		if(leftPressed or rightPressed or selectPressed){
			global.settingsPretty = !global.settingsPretty;
			
			ini_open(global.saveFile);
			ini_write_real("_settings","pretty",global.settingsPretty);
			ini_close();
			
			audio_play_sound(snd_blip,0,false);
		}
			
					
		break;
						
	//exhibition
	case 2:
				
		if(leftPressed or rightPressed or selectPressed){
			global.settingsExhibition = !global.settingsExhibition;
			
			audio_play_sound(snd_blip,0,false);
		}
						
		break;
	//debug
	case 3:
	
		if(leftPressed or rightPressed or selectPressed){
			global.settingsDebug = !global.settingsDebug;
			show_debug_overlay(global.settingsDebug);
			
			ini_open(global.saveFile);
			ini_write_real("_settings","debug",global.settingsDebug);
			ini_close();
			
			audio_play_sound(snd_blip,0,false);
		}
		
		break;
		
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
draw_text(displayWidth/2,64,"graphics settings");
	
//menu text
for(var i = 0; i<settingsGraphicsAmount; i++){
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
			
	var customTextValue = "";
			
	switch(i){
				
		//fullscreen
		case 0:
			customTextValue = boolean_return(global.settingsFullscreen,"enabled","disabled");
			break;
		//pretty
		case 1:
			customTextValue = boolean_return(global.settingsPretty,"enabled","disabled");
			break;
		//exhibition
		case 2:
			customTextValue =  boolean_return(global.settingsExhibition,"enabled","disabled");
			break;
		//debug
		case 3:
			customTextValue =  boolean_return(global.settingsDebug,"enabled","disabled");
			break;

	}
			
			
	if(i = settingsGraphicsSelected){
		
		draw_text_transformed(displayWidth/2,144 + (64*i),"- "+settingsGraphicsText[i]+customTextValue+" -",wave(1.25,1.5,1.5,0),wave(1.25,1.5,1.5,0),0);	
		
		draw_text_formatting(c_white,fa_center,fa_middle,font_12);
		draw_text(displayWidth/2,144 +24+ (64*i),settingsGraphicsDescription[i]);
	
	}
	else{
		draw_text(displayWidth/2,144 + (64*i),settingsGraphicsText[i]+customTextValue);
	}
	
	
}


