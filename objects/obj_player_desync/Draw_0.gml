/// @description 


if(random_chance(.5)){
	gpu_set_blendmode(bm_add);
}

image_alpha = clamp(random_range(0,alarm[0]/10),0,1);

image_blend = make_color_hsv(irandom_range(0,255),255,255);

//image_angle = irandom_range(0,360);

x = random_range(startX-2,startX+2);
y = random_range(startY-2,startY+2);

//no throwable weapon
if(throwableWeapon = ""){
	draw_sprite_ext(asset_get_index("spr_player_stance_"+weapon_get_data(weaponDataStance,weapon)),0,x,y,1,1,imageAngle,global.color[teamNumber],1);
	draw_sprite_ext(asset_get_index("spr_player_stance_"+weapon_get_data(weaponDataStance,weapon)),1,x,y,1,1,imageAngle,c_white,1);
	draw_sprite_ext(spr_player_hair,global.hairPlayerSpawn[playerNumber],x,y,1,1,imageAngle,c_white,1);
	draw_sprite_ext(asset_get_index("spr_player_"+weapon),0,x,y,1,1,imageAngle,c_white,1);
}
//has throwable weapon
else{
	draw_sprite_ext(asset_get_index("spr_player_stance_"+weapon_get_data(weaponDataStance,throwableWeapon)),0,x,y,1,1,imageAngle,global.color[teamNumber],1);
	draw_sprite_ext(asset_get_index("spr_player_stance_"+weapon_get_data(weaponDataStance,throwableWeapon)),1,x,y,1,1,imageAngle,c_white,1);
	draw_sprite_ext(spr_player_hair,global.hairPlayerSpawn[playerNumber],x,y,1,1,imageAngle,c_white,1);
	draw_sprite_ext(asset_get_index("spr_player_"+throwableWeapon),0,x,y,1,1,imageAngle,c_white,1);	
}

gpu_set_blendmode(bm_normal);



