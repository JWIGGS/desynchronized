/// @description create hexplosion

with(instance_create_depth(x,y,depth,obj_hexplosion)){
	event_user(0);	
	range = weapon_get_data(weaponDataRangeAoe,other.weapon);
	damage = weapon_get_data(weaponDataDamage,other.weapon);
	
}

instance_destroy();