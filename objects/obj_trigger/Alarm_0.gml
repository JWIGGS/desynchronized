/// @description trigger bomb

with(instance_create_depth(x,y,depth,obj_explosion)){
	range = weapon_get_data(weaponDataRangeMax,other.weapon);
	rangeEffective = weapon_get_data(weaponDataRangeEffective,other.weapon);
	damage = weapon_get_data(weaponDataDamage,other.weapon);
	event_user(0);	
}

instance_destroy();