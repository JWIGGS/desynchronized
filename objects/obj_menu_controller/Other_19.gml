/// @description audio settings

//////////////////////////////
//							//
//			STEP			//
//							//
//////////////////////////////

//up
if(upPressed){
	settingsAudioSelected--;
	audio_play_sound(snd_blip,0,false);
}
				
//down
if(downPressed){
	settingsAudioSelected++;
	audio_play_sound(snd_blip,0,false);

}
		
		
//wrap selection
settingsAudioSelected = wrap(settingsAudioSelected,0,settingsAudioAmount);
				
				
//selection actions			
switch(settingsAudioSelected){
					
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
draw_text(displayWidth/2,64,"audio settings");
	
//menu text
for(var i = 0; i<settingsAudioAmount; i++){
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
	}
			
			
	if(i = settingsAudioSelected){
		
		draw_text_transformed(displayWidth/2,144 + (64*i),"- "+settingsAudioText[i]+customTextValue+" -",wave(1.25,1.5,1.5,0),wave(1.25,1.5,1.5,0),0);	
		
		draw_text_formatting(c_white,fa_center,fa_middle,font_12);
		draw_text(displayWidth/2,144 +24+ (64*i),settingsAudioDescription[i]);
	
	}
	else{
		draw_text(displayWidth/2,144 + (64*i),settingsAudioText[i]+customTextValue);
	}
	
	
}


