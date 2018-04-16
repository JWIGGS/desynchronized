/// @description create explosion

with(instance_create_depth(x,y,depth,obj_explosion)){
	range = weapon_get_data(weaponDataRangeAoe,other.weapon);
	damage = weapon_get_data(weaponDataDamage,other.weapon);
	event_user(0);	
}

instance_destroy();