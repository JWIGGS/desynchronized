/// @description draw image


draw_sprite_ext(spr_player_indicator,teamNumber,x,y,wave(.9,1.1,2,0),wave(.9,1.1,2,0),imageAngle,global.color[teamNumber],.5);

//no throwable weapon
if(throwableWeapon = ""){
	draw_sprite_ext(asset_get_index("spr_player_stance_"+weapon_get_data(weaponDataStance,weapon)),0,x,y,1,1,imageAngle,global.color[teamNumber],1);
	draw_sprite_ext(asset_get_index("spr_player_stance_"+weapon_get_data(weaponDataStance,weapon)),1,x,y,1,1,imageAngle,c_white,1);
	draw_sprite_ext(spr_player_hair,hair,x,y,1,1,imageAngle,c_white,1);
	draw_sprite_ext(asset_get_index("spr_player_"+weapon),0,x,y,1,1,imageAngle,c_white,1);
}
//has throwable weapon
else{
	draw_sprite_ext(asset_get_index("spr_player_stance_"+weapon_get_data(weaponDataStance,throwableWeapon)),0,x,y,1,1,imageAngle,global.color[teamNumber],1);
	draw_sprite_ext(asset_get_index("spr_player_stance_"+weapon_get_data(weaponDataStance,throwableWeapon)),1,x,y,1,1,imageAngle,c_white,1);
	draw_sprite_ext(spr_player_hair,hair,x,y,1,1,imageAngle,c_white,1);
	draw_sprite_ext(asset_get_index("spr_player_"+throwableWeapon),0,x,y,1,1,imageAngle,c_white,1);	
}















