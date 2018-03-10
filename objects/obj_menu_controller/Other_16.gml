/// @description map step


//////////////////////////////
//							//
//			STEP			//
//							//
//////////////////////////////

//up
if(leftPressed){
	global.mapSelected--;
	audio_play_sound(snd_blip,0,false);
}
				
//down
if(rightPressed){
	global.mapSelected++;
	audio_play_sound(snd_blip,0,false);

}

global.mapSelected = wrap(global.mapSelected,0,global.mapAmount);

if(selectPressed){
	audio_play_sound(snd_selected,1,false);	
	event_user(15);
}
		
//go back to menu
if(backPressed){
	
	menuScreen = "play";	
	audio_play_sound(snd_selected,1,false);
}



//////////////////////////////
//							//
//			DRAW			//
//							//
//////////////////////////////

//title
draw_text_formatting(c_white,fa_center,fa_middle,font_36);
draw_text(displayWidth/2,64,"map select");
	
//map name
draw_text_formatting(c_white,fa_center,fa_middle,font_24);
draw_text(displayWidth/2, 128, global.map[global.mapSelected]);


//map black backround
draw_sprite(spr_map_background,0,displayWidth/2,(displayHeight/2)+64);

//map preview
draw_sprite_ext(asset_get_index("spr_map_"+global.map[global.mapSelected]),0,displayWidth/2,(displayHeight/2)+64,.5,.5,0,c_white,1);


