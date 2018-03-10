/// @description draw image


draw_sprite_ext(spr_player_indicator,teamNumber,x,y,wave(.9,1.1,2,0),wave(.9,1.1,2,0),imageAngle,c_white,.5);
if(throwableWeapon=""){
	draw_sprite_ext(asset_get_index("spr_player_"+weapon),teamNumber,x,y,1,1,imageAngle,c_white,1);
}
else{
	draw_sprite_ext(asset_get_index("spr_player_"+throwableWeapon),teamNumber,x,y,1,1,imageAngle,c_white,1);	
}














