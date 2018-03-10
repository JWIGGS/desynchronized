/// @description white flash
if(alarm[5]!=-1){
	shader_set(shd_white);
}

draw_sprite_ext(sprite_index,0,x,y,1,1,imageAngle,c_white,1);

shader_reset();