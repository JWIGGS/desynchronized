/// @description 
image_alpha += smooth_to_target(0,image_alpha,1);

if(image_alpha<=0){
	instance_destroy();	
}

x += xSpd;
y += ySpd;