/// @description player ui

	
var uiCenterX = (displayWidth/4)*((teamNumber*2)+1);
var uiCenterDirection = 1-(teamNumber*2);

//health which is 0 (for consistency)
draw_sprite_ext(spr_ui_bar,0,uiCenterX+(-uiCenterDirection*(248)),displayHeight-24,uiCenterDirection,1,0,c_white,1);
draw_sprite_part_ext(spr_ui_bar,1,0,0,(hp/hpMax)*sprite_get_width(spr_ui_bar),sprite_get_height(spr_ui_bar),uiCenterX+(-uiCenterDirection*(248)),displayHeight-40,uiCenterDirection,1,global.color[teamNumber],1)

draw_text_formatting(c_black,teamNumber*2,fa_middle,font_12);
draw_text(uiCenterX+(-uiCenterDirection*(240)),displayHeight-24,string(hp)+"/"+string(hpMax));


//dead text (just in case they forgot)
draw_text_formatting(c_white,fa_center,fa_middle,font_12);
draw_text(uiCenterX,displayHeight-96,"spectating");
draw_text_formatting(c_white,fa_center,fa_middle,font_24);
draw_text(uiCenterX,displayHeight-56,status);

if(alarm[0]>0){
	draw_set_alpha(clamp(alarm[0]/8,0,1));
	draw_set_color(c_red)
	draw_rectangle(teamNumber*(displayWidth/2),0,(teamNumber*(displayWidth/2))+(displayWidth/2),displayHeight,false);
	
	draw_set_alpha(1);
}


	
	
