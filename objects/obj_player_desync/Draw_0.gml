/// @description 


if(random_chance(.5)){
	gpu_set_blendmode(bm_add);
}

image_alpha = clamp(random_range(0,alarm[0]/10),0,1);

image_blend = make_color_hsv(irandom_range(0,255),255,255);

//image_angle = irandom_range(0,360);

x = random_range(startX-2,startX+2);
y = random_range(startY-2,startY+2);

draw_self();

gpu_set_blendmode(bm_normal);



