/// @description 

if(alarm[0] >0 and alarm[0] mod 9 <3){
	shader_set(shd_white);
}

if(alarm[5]!=-1){
	shader_set(shd_white);
}

draw_self();

shader_reset();