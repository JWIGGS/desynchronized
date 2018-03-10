/// @description

//iniitialize surface
if(backgroundSurface = -1){

	backgroundSurface = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));

	surface_copy(backgroundSurface,0,0,application_surface);
	
	instance_deactivate_all(true);

	audio_pause_all();	
	
}

//draw surface
draw_surface(backgroundSurface,0,0);

//draw darkener
draw_set_color(c_black);
draw_set_alpha(.3);
draw_rectangle(0,0,displayWidth,displayHeight,false);
draw_set_alpha(1);

//draw text
draw_text_formatting(c_white,fa_center,fa_middle,font_36);
draw_text(displayWidth/2,128,"paused");
	
//play text
for(var i = 0; i<pauseTextAmount; i++){
	draw_text_formatting(c_white,fa_center,fa_middle,font_24);
				
			
	if(i = pauseSelected){
		
		draw_text_transformed(displayWidth/2,256 + (64*i),"- "+pauseText[i]+" -",wave(1.25,1.5,1.5,0),wave(1.25,1.5,1.5,0),0);	
		
		draw_text_formatting(c_white,fa_center,fa_middle,font_12);
		draw_text(displayWidth/2,256 +24+ (64*i),pauseDescription[i]);
		
	
	}
	else{
		draw_text(displayWidth/2,256 + (64*i),pauseText[i]);
	}
	
	
}
