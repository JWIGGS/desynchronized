/// @description create flames

pickupable = false;

image_index = 1;
if(alarm[1] = -1){
	alarm[1] = weapon_get_data(weaponDataReloadTime,weapon);
}
else{
	if(alarm[2] = 0){
		
		for(var i = -weapon_get_data(weaponDataDeviation,weapon)+(weapon_get_data(weaponDataDeviation,weapon)*2/weapon_get_data(weaponDataShotAmount,weapon)); i<weapon_get_data(weaponDataDeviation,weapon); i +=weapon_get_data(weaponDataDeviation,weapon)*2/weapon_get_data(weaponDataShotAmount,weapon)){
			with(instance_create_depth(x,y,depth-1,obj_fire)){
				parent = other.id;
				angle = i+other.angle;
				damage = weapon_get_data(weaponDataDamage,other.weapon);
				range = weapon_get_data(weaponDataRangeMax,other.weapon);
				rangeEffective = weapon_get_data(weaponDataRangeEffective,other.weapon);
			}
	
		}
		
		
		audio_play_sound_player(snd_flamethrower,true);
	}
	
	if(alarm[2] <=0){
		alarm[2] = weapon_get_data(weaponDataRof,weapon);
	}
}


