/// @description 
image_index = irandom_range(0,image_number);
image_alpha += smooth_to_target(0,image_alpha,1);

if(image_alpha<=0){
	instance_destroy();	
}


