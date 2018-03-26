/// @description create explosion

with(instance_create_depth(x,y,depth,obj_explosion)){
	event_user(0);	
	range = weapon_get_data(weaponDataRangeMax,other.weapon);
	rangeEffective = weapon_get_data(weaponDataRangeEffective,other.weapon);
	damage = weapon_get_data(weaponDataDamage,other.weapon);
}

instance_destroy();