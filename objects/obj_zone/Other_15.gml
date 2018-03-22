/// @description expand zone

pickupable = false;

image_index = 1;
if(alarm[1] = -1){
	alarm[1] = weapon_get_data(weaponDataReloadTime,weapon);
}
else{
	if(alarm[2] = 0){
	
		radius = clamp(radius+1,0,maxRadius);
		
	}
	
	if(alarm[2] <=0){
		alarm[2] = weapon_get_data(weaponDataRof,weapon);
	}
}


