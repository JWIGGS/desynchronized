/// @description settings step/draw

//////////////////////////////
//							//
//			STEP			//
//							//
//////////////////////////////

//up
if(upPressed){
	settingsSelected++;
	audio_play_sound(snd_blip,0,false);
}
				
//down
if(downPressed){
	settingsSelected--;
	audio_play_sound(snd_blip,0,false);

}
		
		
//wrap selection
settingsSelected = wrap(settingsSelected,0,settingsAmount);
				
				
//selection actions			
switch(settingsSelected){
					
	//background volume
	case 0:
						
		if(leftPressed){
			global.settingsVolumeBackground-=.1;
			audio_play_sound(snd_blip,0,false);
			
		}
		if(rightPressed){
			global.settingsVolumeBackground+=.1;
			audio_play_sound(snd_blip,0,false);
		}
						
		global.settingsVolumeBackground = wrap(global.settingsVolumeBackground,0,1.1);
		audio_group_set_gain(audiogroup_background,global.settingsVolumeBackground,0);
		
		ini_open(global.saveFile);
		ini_write_real("_settings","volumeBackground",global.settingsVolumeBackground);
		ini_close();

						
		break;
					
	//effects volume
	case 1:
					
		if(leftPressed){
			global.settingsVolumeEffects-=.1;
			audio_play_sound(snd_blip,0,false);
		}
		if(rightPressed){
			global.settingsVolumeEffects+=.1;
			audio_play_sound(snd_blip,0,false);
		}
						
		global.settingsVolumeEffects = wrap(global.settingsVolumeEffects,0,1.1);
		audio_group_set_gain(audiogroup_effects,global.settingsVolumeEffects,0);
		
		ini_open(global.saveFile);
		ini_write_real("_settings","volumeEffects",global.settingsVolumeEffects);
		ini_close();
							
		break;
						
	//fullscreen
	case 2:
					
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
	case 3:
						
		if(leftPressed or rightPressed or selectPressed){
			global.settingsPretty = !global.settingsPretty;
			
			ini_open(global.saveFile);
			ini_write_real("_settings","pretty",global.settingsPretty);
			ini_close();
			
			audio_play_sound(snd_blip,0,false);
		}
			
					
		break;
						
	//exhibition
	case 4:
				
		if(leftPressed or rightPressed or selectPressed){
			global.settingsExhibition = !global.settingsExhibition;
			
			audio_play_sound(snd_blip,0,false);
		}
						
		break;
	//debug
	case 5:
	
		if(leftPressed or rightPressed or selectPressed){
			global.settingsDebug = !global.settingsDebug;
			show_debug_overlay(global.settingsDebug);
			
			ini_open(global.saveFile);
			ini_write_real("_settings","debug",global.settingsDebug);
			ini_close();
			
			audio_play_sound(snd_blip,0,false);
		}
		
		break;
		
	//mouse
	case 6:
	
		if(leftPressed or rightPressed or selectPressed){
			global.settingsMouse = !global.settingsMouse;
			window_set_cursor(boolean_return(global.settingsMouse,cr_default,cr_none));
			
			ini_open(global.saveFile);
			ini_write_real("_settings","mouse",global.settingsMouse);
			ini_close();
			
			audio_play_sound(snd_blip,0,false);
		}
		
		break;
		
	//exhibition
	case 7:
				
		if(leftPressed or rightPressed or selectPressed){
			global.settingsSpeed = !global.settingsSpeed;
			
			ini_open(global.saveFile);
			ini_write_real("_settings","speed",global.settingsSpeed);
			ini_close();
			
			audio_play_sound(snd_blip,0,false);
		}
						
		break;
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
			
	var customTextValue = "";
			
	switch(i){
				
		//background volume
		case 0: 
			customTextValue = string(round(global.settingsVolumeBackground * 100)) + "%";
			break;
		//effects volume
		case 1:
			customTextValue = string(round(global.settingsVolumeEffects * 100)) + "%";
			break;
		//fullscreen
		case 2:
			customTextValue = boolean_return(global.settingsFullscreen,"enabled","disabled");
			break;
		//pretty
		case 3:
			customTextValue = boolean_return(global.settingsPretty,"enabled","disabled");
			break;
		//exhibition
		case 4:
			customTextValue =  boolean_return(global.settingsExhibition,"enabled","disabled");
			break;
		//debug
		case 5:
			customTextValue =  boolean_return(global.settingsDebug,"enabled","disabled");
			break;
		//mouse
		case 6:
			customTextValue =  boolean_return(!global.settingsMouse,"enabled","disabled");
			break;
		//mouse
		case 7:
			customTextValue =  boolean_return(!global.settingsSpeed,"enabled","disabled");
			break;

	}
			
			
	if(i = settingsSelected){
		
		draw_text_transformed(displayWidth/2,144 + (64*i),"- "+settingsText[i]+customTextValue+" -",wave(1.25,1.5,1.5,0),wave(1.25,1.5,1.5,0),0);	
		
		draw_text_formatting(c_white,fa_center,fa_middle,font_12);
		draw_text(displayWidth/2,144 +24+ (64*i),settingsDescription[i]);
	
	}
	else{
		draw_text(displayWidth/2,144 + (64*i),settingsText[i]+customTextValue);
	}
	
	
}


