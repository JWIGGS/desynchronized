/// @description save preset

//////////////////////////////
//							//
//			STEP			//
//							//
//////////////////////////////


//keyboard input letters
for(var i = 65; i<91; i++){
	if(keyboard_check_pressed(i)){
		presetName = string_copy(presetName+chr(i),0,16);
		presetTime = 0;
	}
}

//keyboard input numbers
for(var i = 48; i<58; i++){
	if(keyboard_check_pressed(i)){
		presetName = string_copy(presetName+chr(i),0,16);
		presetTime = 0;
	}
}

//keyboard input delete
if(keyboard_check_pressed(vk_backspace)){
	presetName = string_copy(presetName,0,string_length(presetName)-1);
	presetTime = 0;
}

//save or override preset
if(selectPressed){
	ini_open("save.ini");
	
	var overridePreset = ini_section_exists(presetName);
	
	ini_write_real(presetName,"friendlyFire",global.friendlyFire);
	ini_write_real(presetName,"roundTotal",global.roundTotal);
	ini_write_real(presetName,"timeTotal",global.timeTotal);
	ini_write_real(presetName,"zone",global.zone);
	ini_write_real(presetName,"multiplierHealth",global.multiplierHealth);
	ini_write_real(presetName,"multiplierDamage",global.multiplierDamage);
	ini_write_real(presetName,"multiplierSpeed",global.multiplierSpeed);
	ini_write_real(presetName,"weaponRandom",global.weaponRandom);
	ini_write_real(presetName,"weaponSpawnChance",global.weaponSpawnChance);
	ini_write_real(presetName,"spawnStaggered",global.spawnStaggered);
	
	if(!overridePreset){
		ini_write_string("_presetSettings","name"+string(ini_read_real("_presetSettings","amount",0)),presetName);
		ini_write_real("_presetSettings","amount",ini_read_real("_presetSettings","amount",0)+1);
	}

	ini_close();

	menuScreen = "map";
	customSelected = customTextAmount-1;
	
	audio_play_sound(snd_selected,0,false);
}

presetTime = wrap(presetTime+1,0,90);

//////////////////////////////
//							//
//			DRAW			//
//							//
//////////////////////////////


//title
draw_text_formatting(c_white,fa_center,fa_middle,font_36);
draw_text(displayWidth/2,128,"save preset");

//preset name
draw_text_formatting(c_white,fa_center,fa_middle,font_24);

if(presetTime<45 and string_length(presetName)<16){
	draw_text(displayWidth/2,displayHeight/2,presetName+"|");
}
else{
	draw_text(displayWidth/2,displayHeight/2,presetName);
}

draw_text_formatting(c_white,fa_center,fa_middle,font_12);
draw_text(displayWidth/2,(displayHeight/2)+22,presetDefault);



