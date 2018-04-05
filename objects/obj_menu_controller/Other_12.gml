/// @description arsenal menu

//////////////////////////////
//							//
//			STEP			//
//							//
//////////////////////////////

//create players if not existent
for(var i = 0; i<2; i++){
	if(arsenalPlayer[i] = -1){
		arsenalPlayer[i] = instance_create_depth((displayWidth/4)*((i*2)+1),displayHeight-64,0,obj_player_arsenal);
		arsenalPlayer[i].teamNumber = i;
	}
}


//weapon selection control
for(var i = 0; i<2; i++){
	

	if(gamepad_is_connected(i)){

		//left
		if(gamepad_axis_value(i,gp_axislh)<(-gamepad_deadzone*5)){
			if(alarm[i] = 10){
				weaponSelected[i]--;
				weaponSelectedDirection[i] = -1;
				alarm[i+2] = 5;
				
				
				audio_play_sound(snd_blip,0,false);
			}
		}
		//right
		else if(gamepad_axis_value(i,gp_axislh)>(gamepad_deadzone*5)){
			if(alarm[i] = 10){
				weaponSelected[i]++;
				weaponSelectedDirection[i] = 1;
				alarm[i+2] = 5;
				
				audio_play_sound(snd_blip,0,false);
			}
		}
		//reset
		else{
			alarm[i] = -1;
		}
		
		//wrap selection
		weaponSelected[i] = wrap(weaponSelected[i],0,weaponAmount);
		
		
		if(gamepad_button_check_pressed(i,gp_control_select)){
			
			var colorSelectedPrev = global.colorSelected[i];
			
			do{
				global.colorSelected[i] = irandom_range(0,global.colorChoiceAmount-1);
			}
			until(global.colorSelected[i] != global.colorSelected[1-i] and global.colorSelected[i] != colorSelectedPrev);
			
			global.color[i] = global.colorChoice[global.colorSelected[i]];
			
			audio_play_sound(snd_selected,0,false);
		}

	
	}
}

		
//go back to menu
if(backPressed){
	for(var j = 0; j<2; j++){
		
		//destroy players
		with(arsenalPlayer[j]){
			event_user(6);
			instance_destroy();
		}
		
		//destroy pickupables(grenades)
		with(par_pickupable){
			instance_destroy();	
		}
		arsenalPlayer[j] = -1;
		
		with(par_destructable){
			instance_destroy();	
		}
	}
					
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
draw_text(displayWidth/2,128,"arsenal");

for(i = 0; i<2; i++){
			
	var uiCenterX = (displayWidth/4)*((i*2)+1);
	var uiCenterDirection = 1-(i*2);
	
	var drawY = 256;
	var drawX = uiCenterX-128;
			

	//weapon image wrap and transition
	var leftBound = -2;
	if(weaponSelectedDirection[i]>0){
		leftBound --;
	}
	var rightBound = 3;
	if(weaponSelectedDirection[i]<0){
		rightBound++;	
	}
	
	for(var j = leftBound; j<rightBound; j++){
		var scale = 2;
		if(j = 0){
			scale = 3;
		}
		var drawWeaponX = uiCenterX + (j*80) + ((alarm[i+2]>-1)*weaponSelectedDirection[i]*96*(alarm[i+2]/5));

		var drawWeaponClampedX = clamp(drawWeaponX,uiCenterX-(96*2),uiCenterX+(96*2));
		
		if(drawWeaponX != drawWeaponClampedX){
			scale =(alarm[i+2]/5);
			if((drawWeaponX>drawWeaponClampedX and weaponSelectedDirection[i]=1) or (drawWeaponX<drawWeaponClampedX and weaponSelectedDirection[i]=-1)){
				scale = 1-scale;
			}
			scale*=2;
		}
		
		
		draw_sprite_ext(spr_weapon_indicator,0,drawWeaponClampedX,192,wave(scale-.2,scale+.2,3,0),wave(scale-(scale*.1),scale+(scale*.1),3,0),0,c_white,.5);
		
		draw_sprite_ext(asset_get_index("spr_weapon_"+global.weapon[wrap(weaponSelected[i]+j,0,weaponAmount)]),0,drawWeaponClampedX,192,scale,scale,0,c_white,1)
	}	

			
			
	//name
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
	draw_text(uiCenterX,drawY,weapon_get_data(weaponDataName,global.weapon[weaponSelected[i]]));
	drawY += 36;
			
	//description
	draw_text_formatting(c_white,fa_center,fa_middle,font_12);
	draw_text_ext(uiCenterX,drawY,weapon_get_data(weaponDataDescription,global.weapon[weaponSelected[i]]),24,448);
	drawY += 64;
			
	
	//type
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
	draw_text(drawX,drawY,string(weapon_get_data(weaponDataDisplayType,global.weapon[weaponSelected[i]])));
	drawY += 28;
	draw_text_formatting(c_white,fa_center,fa_middle,font_12);
	draw_text(drawX,drawY,"weapon");
	drawY += 48;
	
	//damage per shot
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
	draw_text(drawX,drawY,string(weapon_get_data(weaponDataDamage,global.weapon[weaponSelected[i]])*weapon_get_data(weaponDataShotAmount,global.weapon[weaponSelected[i]])));
	drawY += 28;
	draw_text_formatting(c_white,fa_center,fa_middle,font_12);
	draw_text(drawX,drawY,"damage per hit");
	drawY += 48;
			
	//shots per second
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
	draw_text(drawX,drawY,string(divide_by_zero(60,weapon_get_data(weaponDataRof,global.weapon[weaponSelected[i]]))));
	drawY += 28;
	draw_text_formatting(c_white,fa_center,fa_middle,font_12);
	draw_text(drawX,drawY,"shots per second");
	drawY += 48;
			
	//damage per second
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
	draw_text(drawX,drawY,string(divide_by_zero(60*weapon_get_data(weaponDataDamage,global.weapon[weaponSelected[i]])*weapon_get_data(weaponDataShotAmount,global.weapon[weaponSelected[i]]),weapon_get_data(weaponDataRof,global.weapon[weaponSelected[i]]))));
	drawY += 28;
	draw_text_formatting(c_white,fa_center,fa_middle,font_12);
	draw_text(drawX,drawY,"damage per second");
	drawY += 48;
			
			
	drawX = uiCenterX+128;
	drawY -= (28+48)*4;
			
	//type
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
	draw_text(drawX,drawY,string(weapon_get_data(weaponDataDisplaySpeed,global.weapon[weaponSelected[i]])));
	drawY += 28;
	draw_text_formatting(c_white,fa_center,fa_middle,font_12);
	draw_text(drawX,drawY,"movement");
	drawY += 48;
			
	//range
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
	draw_text(drawX,drawY,string(weapon_get_data(weaponDataDisplayRange,global.weapon[weaponSelected[i]])));
	drawY += 28;
	draw_text_formatting(c_white,fa_center,fa_middle,font_12);
	draw_text(drawX,drawY,"range");
	drawY += 48;

			
	//clip
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
	draw_text(drawX,drawY,string(weapon_get_data(weaponDataClip,global.weapon[weaponSelected[i]])));
	drawY += 28;
	draw_text_formatting(c_white,fa_center,fa_middle,font_12);
	draw_text(drawX,drawY,"bullets per clip");
	drawY += 48;
			
	//reload time
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
	draw_text(drawX,drawY,string(weapon_get_data(weaponDataReloadTime,global.weapon[weaponSelected[i]])/60));
	drawY += 28;
	draw_text_formatting(c_white,fa_center,fa_middle,font_12);
	draw_text(drawX,drawY,"reload time");
	drawY += 48;
			
			
}
