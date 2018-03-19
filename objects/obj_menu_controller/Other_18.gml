/// @description load preset

//////////////////////////////
//							//
//			STEP			//
//							//
//////////////////////////////


//up
if(upPressed){
	loadSelected++;
	loadVars = true;
	audio_play_sound(snd_blip,0,false);
}
				
//down
if(downPressed){
	loadSelected--;
	loadVars = true;
	audio_play_sound(snd_blip,0,false);

}
		
//wrap selection
loadSelected = wrap(loadSelected,0,loadAmount);


//display view
if(loadSelected> loadPosition+loadHeight-1){
	loadPosition ++;	
}
if(loadSelected< loadPosition){
	loadPosition --;	
}


//delete timer
if(keyboard_check(vk_backspace)){
	loadDelete ++;
}

//delete preset
if(keyboard_check_released(vk_backspace) and loadDelete>180){
	ini_open("save.ini");
	
	ini_section_delete(loadText[loadSelected]);
	
	
	for(var i = loadSelected; i<loadAmount-1; i++){
		ini_write_string("_presetSettings","name"+string(i),ini_read_string("_presetSettings","name"+string(i+1),""));

	}
	
	ini_key_delete("_presetSettings","name"+string(loadAmount-1));
	
	ini_write_real("_presetSettings","amount",ini_read_real("_presetSettings","amount",0)-1);
	
	
	ini_close();
	
	menuScreen = "play";	
	audio_play_sound(snd_selected,1,false);
}

//load preset
if(loadVars){
	
	ini_open("save.ini");
	
	global.friendlyFire = ini_read_real(loadText[loadSelected],"friendlyFire",global.friendlyFire);
	global.roundTotal = ini_read_real(loadText[loadSelected],"roundTotal",global.roundTotal);
	global.timeTotal = ini_read_real(loadText[loadSelected],"timeTotal",global.timeTotal);
	global.zone = ini_read_real(loadText[loadSelected],"zone",global.zone);
	global.multiplierHealth = ini_read_real(loadText[loadSelected],"multiplierHealth",global.multiplierHealth);
	global.multiplierDamage = ini_read_real(loadText[loadSelected],"multiplierDamage",global.multiplierDamage);
	global.multiplierSpeed = ini_read_real(loadText[loadSelected],"multiplierSpeed",global.multiplierSpeed);
	global.weaponRandom = ini_read_real(loadText[loadSelected],"weaponRandom",global.weaponRandom);
	global.weaponSpawnChance = ini_read_real(loadText[loadSelected],"weaponSpawnChance",global.weaponSpawnChance);
	global.spawnStaggered = ini_read_real(loadText[loadSelected],"spawnStaggered",global.spawnStaggered);
	
	ini_close();
	
	loadDescription = string(global.roundTotal)+" rounds | "+string(global.timeTotal div 60)+" seconds";
	
	if(global.friendlyFire){
		loadDescription += " | ";
		loadDescription += "friendly fire";
	}
	
	if(global.zone){
		loadDescription += " | ";
		loadDescription += "battle royale";
	}
	if(global.weaponRandom){
		loadDescription += " | ";
		loadDescription += "random weapons";
	}
	
	if(global.spawnStaggered){
		loadDescription += " | ";
		loadDescription += "staggered spawns";
	}
	if(global.multiplierHealth!=1){
		loadDescription += " | ";
		loadDescription += string(round(global.multiplierHealth*100))+"% health";
	}
	if(global.multiplierDamage!=1){
		loadDescription += " | ";
		loadDescription += string(round(global.multiplierDamage*100))+"% damage";
	}
	if(global.multiplierSpeed!=1){
		loadDescription += " | ";
		loadDescription += string(round(global.multiplierSpeed*100))+"% speed";
	}
	if(global.weaponSpawnChance!=.4){
		loadDescription += " | ";
		loadDescription += string(round(global.weaponSpawnChance*100))+"% weapon spawn";
	}
	
	
	loadVars = false;
	
	
}

//go to map
if(selectPressed){
	menuScreen = "map";
	audio_play_sound(snd_selected,1,false);	
}


//go back to menu
if(backPressed){
	menuScreen = "play";	
	audio_play_sound(snd_selected,1,false);
}




	


//////////////////////////////
//							//
//			DRAW			//
//							//
//////////////////////////////

//title
draw_text_formatting(c_white,fa_center,fa_middle,font_36);
draw_text(displayWidth/2,64,"load preset");


//preset list
for(var i = loadPosition; i<loadPosition+loadHeight; i++){
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
	if(i<loadAmount){
		if(i = loadSelected){
			draw_text_transformed(displayWidth/2,144 + (80*(i-loadPosition)),"- "+loadText[i]+" -",wave(1.25,1.5,1.5,0),wave(1.25,1.5,1.5,0),0);	
		
			draw_text_formatting(c_white,fa_center,fa_middle,font_12);
			draw_text_ext(displayWidth/2,144 +28+ (80*(i-loadPosition)),loadDescription,16,768);
		
		}
		else{
			draw_text(displayWidth/2,144 + (80*(i-loadPosition)),loadText[i]);
		}
	}
	
	
}


