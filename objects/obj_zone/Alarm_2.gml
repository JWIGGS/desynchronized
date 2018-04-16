/// @description damage
alarm[2] = 60;


if(instance_exists(obj_player)){
	
	with(obj_player){
		if(point_distance(x,y,other.x,other.y)<other.radius){
			damage_object(id,weapon_get_data(weaponDataDamage,other.weapon));
			audio_play_sound_player(snd_zone_damage,playerControl);
		}
	}

}