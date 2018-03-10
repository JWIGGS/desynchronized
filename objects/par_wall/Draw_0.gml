/// @description 
if(alarm[5]!=-1){
	shader_set(shd_white);
}

if(global.settingsPretty){
	draw_wall(sprite_index,x,y,4,object_index);	
}
else{
	draw_self();
}



shader_reset();