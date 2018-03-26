/// @description expand zone

pickupable = false;

image_index = 1;
if(alarm[1] = -1){
	alarm[1] = weapon_get_data(weaponDataRof,weapon);
}
else{
	if(alarm[1]>30){
		radius = clamp(radius+1,0,maxRadius);
	}
	else{
		radius -= maxRadius/30;	
	}

}


