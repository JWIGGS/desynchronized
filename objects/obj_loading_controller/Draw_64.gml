/// @description draw loading


if(loading){
	
	draw_set_color(c_black);
	draw_rectangle(0,0,displayWidth,displayHeight,false);
	
	draw_text_formatting(c_white,fa_center,fa_middle,font_64);
	
	draw_text(displayWidth/2,displayHeight/2,"LOADING");

}

