/// @description draw fade


if(fadePrev){
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(0,0,displayWidth,displayHeight,false);
	
	draw_set_alpha(1);
}