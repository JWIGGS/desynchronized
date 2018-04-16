/// @description play menu

//////////////////////////////
//							//
//			STEP			//
//							//
//////////////////////////////

//up
if(upPressed){
	playSelected--;
	alarm[4] = -1;
	audio_play_sound(snd_blip,0,false);
}
//down
if(downPressed){
	playSelected++;
	alarm[4] = -1;
	audio_play_sound(snd_blip,0,false);
}

//wrap selection
playSelected = wrap(playSelected,0,playTextAmount);


if(selectPressed and playSelected = playTextAmount-1){
	backPressed = true;	
}

//select actions
if(selectPressed){
	
	switch(playSelected){
		
		//standard play
		case 0: 
			
			audio_play_sound(snd_selected,1,false);
			
			global.friendlyFire = false;
			global.roundTotal = 4;
			global.players = 2;
			global.timeTotal = (60*45) + 2; //45 seconds
			global.zone = true;
			global.multiplierHealth = 1;
			global.multiplierDamage = 1;
			global.multiplierSpeed = 1;
			global.weaponSpawnChance = .6;
			global.spawnStaggered = false;
			global.healthRegen = true;

			menuScreen = "map";
			
			break
			
		//blitz play
		case 1:
			
			audio_play_sound(snd_selected,1,false);
		
			global.friendlyFire = false;
			global.roundTotal = 3;
			global.players = 2;
			global.timeTotal = (30*60) + 2; //30 seconds
			global.zone = true;
			global.multiplierHealth = 1;
			global.multiplierDamage = 1;
			global.multiplierSpeed = 1;
			global.weaponSpawnChance = 1;
			global.spawnStaggered = false;
			global.healthRegen = false;
			
			menuScreen = "map";
		
			break;
			
		//marathon play
		case 2:
			
			audio_play_sound(snd_selected,1,false);
		
			global.friendlyFire = false;
			global.roundTotal = 5;
			global.players = 2;
			global.timeTotal = (60*60) + 2; //30 seconds
			global.zone = true;
			global.multiplierHealth = 1;
			global.multiplierDamage = 1;
			global.multiplierSpeed = 1;
			global.weaponSpawnChance = .7;
			global.spawnStaggered = false;
			global.healthRegen = true;
			
			menuScreen = "map";
		
			break;
			
		//custom game
		case 3:
		
			audio_play_sound(snd_selected,1,false);
		
			global.friendlyFire = false;
			global.roundTotal = 5;
			global.players = 2;
			global.timeTotal = (60*60) + 2; //45 seconds
			global.zone = true;
			global.multiplierHealth = 1;
			global.multiplierDamage = 1;
			global.multiplierSpeed = 1;
			global.weaponSpawnChance = .6;
			global.spawnStaggered = false;
			global.healthRegen = true;
			
			customSelected = 0;
			customPosition = 0;


			menuScreen = "custom";
		
			break;
			
		//load preset
		case 4:
			
			
			ini_open("save.ini");
			
			
			//get preset number
			if(ini_section_exists("_presetSettings")){
				loadAmount = ini_read_real("_presetSettings","amount",0);	
			}
			
			//populate preset texts
			if(loadAmount>0){
				array_fill_1d(loadText,loadAmount,"");
				
				for(var i = 0; i<loadAmount; i++){
					loadText[i] = ini_read_string("_presetSettings","name"+string(i),"")
				}
				loadPosition = 0;
				loadVars = true;
				menuScreen = "load";
				
				audio_play_sound(snd_selected,1,false);
				
				
				
			}
			
			//no existing presets
			else{
				audio_play_sound(snd_alarm_double,1,false);	
			}
			
			ini_close();
			
			
			break;
		
	}
	
}

//back to main
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
draw_text(displayWidth/2,128,"play");
	
//play texts
for(var i = 0; i<playTextAmount; i++){
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
	
	if(alarm[4] !=-1 and point_in_rectangle(mouse_x,mouse_y,0,256 + (64*i)-32,displayWidth,256 + (64*i) +32)){
		playSelected = i;
	}
			
	if(i = playSelected){
		
		draw_text_transformed(displayWidth/2,256 + (64*i),"- "+playText[i]+" -",wave(1.25,1.5,1.5,0),wave(1.25,1.5,1.5,0),0);	
		
		draw_text_formatting(c_white,fa_center,fa_middle,font_12);
		draw_text(displayWidth/2,256 +24+ (64*i),playDescription[i]);
		
	
	}
	else{
		draw_text(displayWidth/2,256 + (64*i),playText[i]);
	}
	
	
}


