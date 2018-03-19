///@description shoot
if(clipCurrent>0 or clipSize = 0){

	if(reloading){
		reloading = false;
		audio_stop_sound(reloadingSound);
		reloadingSound = -1;	
	}
	
	alarm[0] = weapon_get_data(weaponDataRof,weapon);
	
	clipCurrent--;

	if(weapon_get_data(weaponDataShotAmount,weapon) = 1){

		with(instance_create_depth(rotate_around_point(x+weapon_get_data(weaponDataOffsetX,weapon),y+weapon_get_data(weaponDataOffsetY,weapon),x,y,imageAngle+90,"x"),rotate_around_point(x+weapon_get_data(weaponDataOffsetX,weapon),y+weapon_get_data(weaponDataOffsetY,weapon),x,y,imageAngle+90,"y"),depth+1,weapon_get_data(weaponDataObjectCreate,weapon))){
			parent = other.id;
			angle = other.imageAngle;
			damage = weapon_get_data(weaponDataDamage,other.weapon);
			range = weapon_get_data(weaponDataRangeMax,other.weapon);
			rangeEffective = weapon_get_data(weaponDataRangeEffective,other.weapon);
			event_user(0);
		}
	
	}

	else{
	
		for(var i = -weapon_get_data(weaponDataDeviation,weapon)+(weapon_get_data(weaponDataDeviation,weapon)*2/weapon_get_data(weaponDataShotAmount,weapon)); i<weapon_get_data(weaponDataDeviation,weapon); i +=weapon_get_data(weaponDataDeviation,weapon)*2/weapon_get_data(weaponDataShotAmount,weapon)){
	
			with(instance_create_depth(rotate_around_point(x+weapon_get_data(weaponDataOffsetX,weapon),y+weapon_get_data(weaponDataOffsetY,weapon),x,y,imageAngle+90,"x"),rotate_around_point(x+weapon_get_data(weaponDataOffsetX,weapon),y+weapon_get_data(weaponDataOffsetY,weapon),x,y,imageAngle+90,"y"),depth+1,weapon_get_data(weaponDataObjectCreate,weapon))){
				parent = other.id;
				angle = other.imageAngle+i;
				damage = weapon_get_data(weaponDataDamage,other.weapon);
				range = weapon_get_data(weaponDataRangeMax,other.weapon);
				rangeEffective = weapon_get_data(weaponDataRangeEffective,other.weapon);
				event_user(0);
			}
	
		}
	
	}
	
	
	//still has bullets
	audio_play_sound(asset_get_index("snd_"+weapon),1,false);

}
