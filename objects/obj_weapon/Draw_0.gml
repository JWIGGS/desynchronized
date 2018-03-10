/// @description draw weapon

draw_sprite_ext(spr_weapon_indicator,0,x,y,wave(.9,1.1,2,0),wave(.9,1.1,2,0),imageAngle,c_white,.4+(.4*inRange));

draw_sprite_ext(asset_get_index("spr_weapon_"+weapon),0,x,y,1,1,imageAngle,c_white,1);

//hitobx
if(weapon!= "" and sprite_index = -1){
	sprite_index = 	asset_get_index("spr_weapon_"+weapon);
}