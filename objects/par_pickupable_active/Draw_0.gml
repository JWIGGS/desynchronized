/// @description draw

if(pickupable){
	draw_sprite_ext(spr_active_throwable_indicator,0,x,y,wave(.9,1.1,2,0),wave(.9,1.1,2,0),imageAngle,c_white,.4+(.4*inRange)+(.3 * (timer mod 10 <2)));
}
draw_sprite_ext(asset_get_index("spr_weapon_"+weapon),1,x,y,1,1,imageAngle,c_white,1);