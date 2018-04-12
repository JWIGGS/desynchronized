/// @description player ui

var uiCenterX = (displayWidth/4)*((teamNumber*2)+1);
var uiCenterDirection = 1-(teamNumber*2);



//main weapon
if(throwableWeapon = ""){
	if(alarm[0] = -1 or weapon_get_data(weaponDataDamage,weapon) = 0){
		draw_sprite_ext(asset_get_index("spr_ui_weapon_"+weapon),0,uiCenterX+(uiCenterDirection*240),displayHeight-8,-4*uiCenterDirection,4,0,c_white,1);
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
	draw_sprite_ext(asset_get_index("spr_ui_weapon_"+throwableWeapon),throwableActive,uiCenterX+(uiCenterDirection*240),displayHeight-8,-4*uiCenterDirection,4,0,c_white,1);
}
	
	
//power bar
if(throwablePowerHold){
	draw_sprite_ext(spr_ui_power_bar,0,uiCenterX+(uiCenterDirection*240),displayHeight-8,-uiCenterDirection,1,0,c_white,.5);
		
	draw_sprite_part_ext(spr_ui_power_bar,1,0,(1-(throwablePower/throwablePowerMax))*sprite_get_height(spr_ui_power_bar),sprite_get_width(spr_ui_power_bar),(throwablePower/throwablePowerMax)*sprite_get_height(spr_ui_power_bar),uiCenterX+(uiCenterDirection*240),displayHeight-8-(throwablePower/throwablePowerMax)*sprite_get_height(spr_ui_power_bar)+1,-uiCenterDirection,1,color_blend(c_lime,c_red,throwablePower/throwablePowerMax),.5);
}

	
//ammo - no throwable weapon
if(throwableWeapon = ""){
	if(weapon_get_data(weaponDataClip,weapon) !=0){
		draw_text_formatting(c_white,2-(teamNumber*2),fa_middle,font_12);
		draw_text(uiCenterX+(uiCenterDirection*240),displayHeight-12,string(clipCurrent)+"/"+string(clipSize))
	}
}
//throwable timer
else if(throwableActive){
	draw_text_formatting(c_white,2-(teamNumber*2),fa_middle,font_12);
	draw_text(uiCenterX+(uiCenterDirection*240),displayHeight-12,string(((throwableTime-1) div 60)+1));
		
}


	
if(throwableWeapon = ""){
	
	crosshairLength += smooth_to_target(raycast(x,y,imageAngle,weapon_get_data(weaponDataRangeMax,weapon),par_destructable)-16,crosshairLength,10);
	var crosshairAngle = 0;
		
	if(reloading){
		crosshairAngle = (alarm[0]/weapon_get_data(weaponDataReloadTime,weapon)) * weapon_get_data(weaponDataCrosshairAngle,weapon);
	}

	var drawX = uiCenterX+weapon_get_data(weaponDataOffsetY,weapon);
	var drawY = displayHeight-64 - (crosshairLength);
	
	draw_sprite_ext(asset_get_index("spr_crosshair_"+weapon_get_data(weaponDataCrosshair,weapon)),0,drawX,drawY,1.2,1.2,crosshairAngle,global.color[teamNumber],boolean_return(reloading,.5,1));

	if(weapon_get_data(weaponDataClip,weapon) !=0){
		draw_text_formatting(c_white,fa_center,fa_middle,font_12);
		draw_text_color(drawX,drawY+32,string(clipCurrent)+"/"+string(clipSize),c_white,c_white,c_white,c_white,.5)
	}

}