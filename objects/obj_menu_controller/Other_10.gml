/// @description main menu

//////////////////////////////
//							//
//			STEP			//
//							//
//////////////////////////////


//title glitch
if(random_chance(1/10)){
	titleX = (displayWidth/2) + random_range(-5,5);
	titleY = 256 + random_range(-5,5);	
	titleColor = make_color_hsv(irandom_range(0,255),255,255);
	titleAngle = random_range(-5,5);
	titleSize = random_range(1,1.2);
}
//no title glitch
else{
	titleX = (displayWidth/2);
	titleY = 256;
	titleColor = c_black;
	titleAngle = 0;
	titleSize = 1;
}


			
//up
if(upPressed){
	menuSelected--;
	audio_play_sound(snd_blip,0,false);
}
//down
if(downPressed){
	menuSelected++;
	audio_play_sound(snd_blip,0,false);
}

//wrap menu based on exhibition mode
if(global.settingsExhibition){
	menuSelected = wrap(menuSelected,0,menuTextAmount-2);
}
else{
	menuSelected = wrap(menuSelected,0,menuTextAmount);
}
		
//menu selection
if(selectPressed){
					
	audio_play_sound(snd_selected,1,false);
	switch(menuSelected){
				
		//play
		case 0:
			menuScreen = "play";
			break;
				
		//arsenal
		case 1:
			menuScreen = "arsenal";
			break;
					
		//tutorial
		case 2:	
			menuScreen = "tutorial";		
			break;
			
		//settings
		case 3:
			if(!global.settingsExhibition){
				menuScreen = "settings";
			}
			break;
					
		//exit
		case 4:
			if(!global.settingsExhibition){	
				game_end();
			}
			break;
				
	}

}


//////////////////////////////
//							//
//			DRAW			//
//							//
//////////////////////////////



//glitched title
if(global.mode != "fade out"){
	draw_text_formatting(titleColor,fa_center,fa_middle,font_64);
	draw_text_transformed(titleX,titleY,"DESYNCHRONIZED",titleSize,titleSize,titleAngle);

}

//title
draw_text_formatting(c_white,fa_center,fa_middle,font_64);
draw_text(displayWidth/2,256,"DESYNCHRONIZED");


//menu text
for(var i = 0; i<menuTextAmount; i++){
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
	
	if(i = menuSelected){
		
		draw_text_transformed(displayWidth/2,384 + (64*i),"- "+menuText[i]+" -",wave(1.25,1.5,1.5,0),wave(1.25,1.5,1.5,0),0);	
		
		draw_text_formatting(c_white,fa_center,fa_middle,font_12);
		draw_text(displayWidth/2,384 +24+ (64*i),menuDescription[i]);
		
	
	}
	else if(!global.settingsExhibition or (global.settingsExhibition and i<menuTextAmount-2)){
		
		draw_text(displayWidth/2,384 + (64*i),menuText[i]);
	}
	
	
}



	
