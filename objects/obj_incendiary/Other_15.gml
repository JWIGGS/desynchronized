/// @description create explosion

image_index = 1;
if(alarm[1] = -1){
	alarm[1] = 60;
	
}
else{
	for(var i = 0; i<360; i+=20){
		with(instance_create_depth(x,y,depth-1,obj_fire)){
			parent = other.id;
			angle = i+other.offset;
			damage = weapon_get_data(weaponDataDamage,other.weapon);
			range = weapon_get_data(weaponDataRangeMax,other.weapon);
			rangeEffective = weapon_get_data(weaponDataRangeEffective,other.weapon);
		}
	
	}
	offset += 13;
	audio_play_sound(snd_flamethrower,0,false);
}


