/// @description 
if(alarm[0]!=-1){
	for(var i = 0; i<distance; i++){
		
		draw_sprite_ext(sprite_index,0,x+lengthdir_x(i,angle),y+lengthdir_y(i,angle),1,1,0,global.color[parentTeamNumber],(alarm[0]/3)*damage_falloff_multiplier(rangeEffective,range,i));


	}
}