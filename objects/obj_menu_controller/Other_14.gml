/// @description custom step

//////////////////////////////
//							//
//			STEP			//
//							//
//////////////////////////////

//up
if(upPressed){
	customSelected++;
	audio_play_sound(snd_blip,0,false);
}
				
//down
if(downPressed){
	customSelected--;
	audio_play_sound(snd_blip,0,false);

}
		
		
//clamp selection
customSelected = clamp(customSelected,0,customTextAmount-1);

//selection movement
if(customSelected> customPosition+customHeight-1){
	customPosition ++;	
}
if(customSelected< customPosition){
	customPosition --;	
}



//selection actions		
switch(customSelected){
					
	//rounds
	case 0:
						
		if(leftPressed){
			global.roundTotal--;
			audio_play_sound(snd_blip,0,false);
		}
		if(rightPressed){
			global.roundTotal++;
			audio_play_sound(snd_blip,0,false);
		}
						
		global.roundTotal = wrap(global.roundTotal,3,6);
						
						
		break;
					
	//friendly fire
	case 1:
					
		if(leftPressed or rightPressed or selectPressed){
			global.friendlyFire = !global.friendlyFire;
			audio_play_sound(snd_blip,0,false);
		}
					
		break;
						
	//battle royale
	case 2:
					
		if(leftPressed or rightPressed or selectPressed){
			global.zone = !global.zone;
			audio_play_sound(snd_blip,0,false);
		}
					
		break;
						
	//health scale
	case 3:
						
		if(leftPressed){
			global.multiplierHealth -= .1;	
			audio_play_sound(snd_blip,0,false);
		}
		if(rightPressed){
			global.multiplierHealth += .1;
			audio_play_sound(snd_blip,0,false);
		}
						
		global.multiplierHealth = wrap(global.multiplierHealth,.1,10.1);
						
						
					
		break;
						
	//damage scale
	case 4:
						
		if(leftPressed){
			global.multiplierDamage -= .1;	
			audio_play_sound(snd_blip,0,false);
		}
		if(rightPressed){
			global.multiplierDamage += .1;
			audio_play_sound(snd_blip,0,false);
		}
						
		global.multiplierDamage = wrap(global.multiplierDamage,.1,10.1);
						
		break;
					
	//movement scale
	case 5:
					
		if(leftPressed){
			global.multiplierSpeed -= .1;	
			audio_play_sound(snd_blip,0,false);
		}
		if(rightPressed){
			global.multiplierSpeed += .1;
			audio_play_sound(snd_blip,0,false);
		}
						
		global.multiplierSpeed = wrap(global.multiplierSpeed,.5,2.1);
					
		break;
	
	//random weapons
	case 6:
					
		if(leftPressed or rightPressed or selectPressed){
			global.weaponRandom = !global.weaponRandom;
			audio_play_sound(snd_blip,0,false);
		}
					
		break;
		
	//weapon spawn chance
	case 7:
					
		if(leftPressed){
			global.weaponSpawnChance -= .1;	
			audio_play_sound(snd_blip,0,false);
		}
		if(rightPressed){
			global.weaponSpawnChance += .1;
			audio_play_sound(snd_blip,0,false);
		}
						
		global.weaponSpawnChance = wrap(global.weaponSpawnChance,0,1.1);
					
		break;
				
	//time limit
	case 8:
					
		if(leftPressed){
			global.timeTotal -= 300;	
			audio_play_sound(snd_blip,0,false);
		}
		if(rightPressed){
			global.timeTotal += 300;
			audio_play_sound(snd_blip,0,false);
		}
		
		global.timeTotal = wrap(global.timeTotal-2,1800,11700)+2;
					
		break;
		
	//staggered spawns
	case 9:
					
		if(leftPressed or rightPressed or selectPressed){
			global.spawnStaggered = !global.spawnStaggered;
			audio_play_sound(snd_blip,0,false);
		}
					
		break;
		
	//save preset
	case 10:
	
		if(selectPressed){
			presetName = "";
			menuScreen = "save";
			audio_play_sound(snd_selected,0,false);
		}
	
		break;
	
						
	//battle
	case 11:
						
		if(selectPressed){
			menuScreen = "map";
			audio_play_sound(snd_selected,1,false);
		}
					
		break;
					
					
					
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
draw_text(displayWidth/2,64,"custom battle");
	
//menu text
for(var i = customPosition; i<customPosition+customHeight; i++){
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
			
	var customTextValue = "";
			
	switch(i){
				
		//rounds
		case 0: 
			customTextValue = string(global.roundTotal);
			break;
		//friendly fire
		case 1:
			customTextValue = boolean_return(global.friendlyFire,"enabled","disabled");
			break;
		//zone
		case 2:
			customTextValue = boolean_return(global.zone,"enabled","disabled");
			break;
		//health scale
		case 3:
			customTextValue = string(round(global.multiplierHealth * 100)) + "%";
			break;
		//damage scale
		case 4:
			customTextValue = string(round(global.multiplierDamage * 100)) + "%";
			break;
		//speed scale
		case 5:
			customTextValue = string(round(global.multiplierSpeed * 100)) + "%";
			break;
		//random weapon
		case 6:
			customTextValue = boolean_return(global.weaponRandom,"enabled","disabled");
			break;
		//spawn chance
		case 7:
			customTextValue = string(round(global.weaponSpawnChance * 100)) + "%";
			break;
					
		//time
		case 8:
			customTextValue = string(round(global.timeTotal div 60));
			break;
			
		//random weapon
		case 9:
			customTextValue = boolean_return(global.spawnStaggered,"enabled","disabled");
			break;
				
	}
	
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
	
	if(i = customSelected){
		
		draw_text_transformed(displayWidth/2,144 + (64*(i-customPosition)),"- "+customText[i]+customTextValue+" -",wave(1.25,1.5,1.5,0),wave(1.25,1.5,1.5,0),0);	
		
		draw_text_formatting(c_white,fa_center,fa_middle,font_12);
		draw_text(displayWidth/2,144 +22+ (64*(i-customPosition)),customDescription[i]);
		
	
	}
	else{
		draw_text(displayWidth/2,144 + (64*(i-customPosition)),customText[i]+customTextValue);
	}
	
	
}


