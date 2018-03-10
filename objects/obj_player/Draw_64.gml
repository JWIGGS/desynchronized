/// @description player ui

//dont draw if not controlled
if(!playerControl){
	exit;		
}


//ui alpha set
var alpha = 1;

switch(global.mode){
	case "flyover":
	case "fade in":
	case "fade in finished":
		exit;
		
	case "countdown":
		alpha = (1-(obj_game_controller.alarm[0]/120))*2
		draw_set_alpha(alpha);
		break;
		
	case "selection":
		alpha = 1;

		break;
		
	case "selection out":
		alpha = obj_game_controller.alarm[0]/30;

		break;
}
	
//ui vars
var uiCenterX = (displayWidth/4)*((teamNumber*2)+1);
var uiCenterDirection = 1-(teamNumber*2);

draw_set_alpha(alpha);
	
//resync time
draw_text_formatting(c_white,fa_center,fa_middle,font_24);
if(resyncTime!=-1 and resyncTime>global.timeCurrent){
	draw_text(uiCenterX,displayHeight-64,"synchronize in "+string((resyncTime-global.timeCurrent)div 60));
		
}
else if(global.spawnStaggered and ((playerControl and global.timeCurrent<playerNumber*60 and global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeCurrent] = "alive") or global.mode = "selection") and ((playerNumber*60)-global.timeCurrent)div 60!= 0){
	draw_text(uiCenterX,displayHeight-64,"synchronize in "+string(((playerNumber*60)-global.timeCurrent)div 60));
		
}
else if(throwableWeapon = "" and reloading){
	draw_text(uiCenterX,displayHeight-64,"reloading");	
}
else if(global.mode = "selection"){
	if(global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeMax]="dead"){
		draw_text(uiCenterX,displayHeight-64,"dead");	
	}
	else{
		draw_text(uiCenterX,displayHeight-64,"new timeline");
	}
}


if(global.mode = "selection out"){
	alpha = 1;	
}

draw_set_alpha(1);


if(global.playerMode[value_to_1d(playerNumber,teamNumber,global.roundTotal),global.timeMax]!="dead"){
	
	//main weapon
	if(throwableWeapon = ""){
		if(alarm[0] = -1 or weapon_get_data(weaponDataDamage,weapon) = 0){
			draw_sprite_ext(asset_get_index("spr_ui_weapon_"+weapon),0,uiCenterX+(uiCenterDirection*240),displayHeight-8,-4*uiCenterDirection,4,0,c_white,alpha);
		}
		else if(reloading){
			draw_sprite_ext(asset_get_index("spr_ui_weapon_"+weapon),0,uiCenterX+(uiCenterDirection*240),displayHeight-8,-4*uiCenterDirection,4,0,c_white,.25+(.5*(1-((alarm[0]/weapon_get_data(weaponDataReloadTime,weapon))/2))));
		}
		else{
			draw_sprite_ext(asset_get_index("spr_ui_weapon_"+weapon),0,uiCenterX+(uiCenterDirection*240),displayHeight-8,-4*uiCenterDirection,4,0,c_white,.25+(.5*(1-(alarm[0]/weapon_get_data(weaponDataRof,weapon)))));
		}
	}
	//throwable weapon
	else{
		draw_sprite_ext(asset_get_index("spr_ui_weapon_"+throwableWeapon),throwableActive,uiCenterX+(uiCenterDirection*240),displayHeight-8,-4*uiCenterDirection,4,0,c_white,alpha);
	}
	
	//power bar
	if(throwablePowerHold){
		draw_sprite_ext(spr_ui_power_bar,0,uiCenterX+(uiCenterDirection*240),displayHeight-96,-uiCenterDirection,1,0,c_white,.5*alpha);
		
		draw_sprite_part_ext(spr_ui_power_bar,1,0,(1-(throwablePower/throwablePowerMax))*sprite_get_height(spr_ui_power_bar),sprite_get_width(spr_ui_power_bar),(throwablePower/throwablePowerMax)*sprite_get_height(spr_ui_power_bar),uiCenterX+(uiCenterDirection*240),displayHeight-96-(throwablePower/throwablePowerMax)*sprite_get_height(spr_ui_power_bar)+1,-uiCenterDirection,1,color_blend(c_lime,c_red,throwablePower/throwablePowerMax),.5*alpha);
	}
	
	//ammo - no throwable weapon
	if(throwableWeapon = ""){
		if(weapon_get_data(weaponDataClip,weapon) !=0){
			draw_text_formatting(c_white,2-(teamNumber*2),fa_middle,font_12);
			draw_text(uiCenterX+(uiCenterDirection*240),displayHeight-16,string(clipCurrent)+"/"+string(clipSize))
		}
	}
	//throwable timer
	else if(throwableActive){
		draw_text_formatting(c_white,2-(teamNumber*2),fa_middle,font_12);
		draw_text(uiCenterX+(uiCenterDirection*240),displayHeight-16,string(((throwableTime-1) div 60)+1));
		
	}
	
	//health
	
	//bar
	draw_sprite_ext(spr_ui_bar,0,uiCenterX+(-uiCenterDirection*(248)),displayHeight-(sprite_get_height(spr_ui_bar)/2)-8,uiCenterDirection,1,0,c_white,alpha);

	//preview bar
	if(global.mode = "selection" and resyncTime!=-1 and global.playerEndHealth[value_to_1d(playerNumber,teamNumber,global.roundTotal)]!=0){
		draw_sprite_part_ext(spr_ui_bar,1,0,0,(global.playerEndHealth[value_to_1d(playerNumber,teamNumber,global.roundTotal)]/hpMax)*sprite_get_width(spr_ui_bar),sprite_get_height(spr_ui_bar),uiCenterX+(-uiCenterDirection*(248)),displayHeight-sprite_get_height(spr_ui_bar)-8,uiCenterDirection,1,global.color[teamNumber],alpha)
	
		draw_text_formatting(c_black,teamNumber*2,fa_middle,font_12);
		draw_text(uiCenterX+(-uiCenterDirection*(240)),displayHeight-(sprite_get_height(spr_ui_bar)/2)-8,string(round(global.playerEndHealth[value_to_1d(playerNumber,teamNumber,global.roundTotal)]))+"/"+string(round(hpMax)));
	}
	//actual bar
	else{
	
		//red effect
		draw_sprite_part_ext(spr_ui_bar,1,0,0,(hpEffect/hpMax)*sprite_get_width(spr_ui_bar),sprite_get_height(spr_ui_bar),uiCenterX+(-uiCenterDirection*(248)),displayHeight-sprite_get_height(spr_ui_bar)-8,uiCenterDirection,1,c_white,alpha)

		draw_sprite_part_ext(spr_ui_bar,1,0,0,(hp/hpMax)*sprite_get_width(spr_ui_bar),sprite_get_height(spr_ui_bar),uiCenterX+(-uiCenterDirection*(248)),displayHeight-sprite_get_height(spr_ui_bar)-8,uiCenterDirection,1,global.color[teamNumber],alpha)
	
		draw_text_formatting(c_black,teamNumber*2,fa_middle,font_12);
		draw_text(uiCenterX+(-uiCenterDirection*(240)),displayHeight-(sprite_get_height(spr_ui_bar)/2)-8,string(round(hp))+"/"+string(round(hpMax)));
	}	
}


if(global.mode!="selection" and global.mode!="selection out"){
	//friendly teammate arrows

	for(var i = 0; i<global.roundTotal; i++){
			
		if(global.playerMode[value_to_1d(i,teamNumber,global.roundTotal),global.timeCurrent]="alive"){
			
			var drawAngle = 180-imageAngle+point_direction(x,y,global.playerX[value_to_1d(i,teamNumber,global.roundTotal),global.timeCurrent],global.playerY[value_to_1d(i,teamNumber,global.roundTotal),global.timeCurrent]);
			var distance = point_distance(x,y,global.playerX[value_to_1d(i,teamNumber,global.roundTotal),global.timeCurrent],global.playerY[value_to_1d(i,teamNumber,global.roundTotal),global.timeCurrent])
			
			var distanceScale = 3-clamp(distance/256,1,3);
			
			distance *= 2;
			
			var drawX = uiCenterX+lengthdir_x(distance,drawAngle-90);
			var drawY = displayHeight-64+lengthdir_y(distance,drawAngle-90);
			
			var clampedX = clamp(drawX,32+((displayWidth/2)*teamNumber),displayWidth/2+((displayWidth/2)*teamNumber)-32);
			var clampedY = clamp(drawY,32,displayHeight-sprite_get_height(spr_ui_bar)-8);
			
			if(drawX != clampedX or drawY != clampedY){

				draw_sprite_ext(spr_ui_player_pointer,teamNumber,clampedX,clampedY,distanceScale,distanceScale,drawAngle,c_white,alpha);

			}
		}
			

	}
}
	
	
draw_set_alpha(1);



	
	
