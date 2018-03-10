/// @description 
spd -= .1;
spd = clamp(spd,0,5);

x += lengthdir_x(spd,image_angle);
y += lengthdir_y(spd,image_angle);

if(spd>.5){

	repeat(irandom_range(5,15)){
		with(instance_create_depth(x+random_range(-2,2),y+random_range(-2,2),0,obj_blood)){
			image_angle = other.image_angle+random_range(-45,45);
		}
	}
	
}



