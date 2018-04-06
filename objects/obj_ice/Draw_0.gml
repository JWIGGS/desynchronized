/// @description 
image_alpha = boolean_return(alarm[0]>10,.5,alarm[0]/20)+(alarm[0]/1200);
event_inherited();


draw_sprite_ext(spr_crack,7-ceil((alarm[0]/600)*7),x,y,1,1,0,c_white,.1);


