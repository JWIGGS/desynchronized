/// @description zone damage

if(point_distance(x,y,global.zoneX,global.zoneY)>global.zoneRadius and alarm[1] = -1){
	alarm[1] = 60;
}
if(point_distance(x,y,global.zoneX,global.zoneY)>global.zoneRadius and alarm[1] = 0){
	damage_object(id,global.zoneDamage);
	audio_play_sound_player(snd_zone,playerControl);
	alarm[1] = 60;
}

if(instance_exists(obj_zone)){
	nearestZone = instance_nearest(x,y,obj_zone);
	
	if(point_distance(x,y,nearestZone.x,nearestZone.y)<nearestZone.radius and alarm[1] = -1){
		alarm[1] = 60;
	}
	if(point_distance(x,y,nearestZone.x,nearestZone.y)<nearestZone.radius and alarm[1] = 0){
		damage_object(id,global.zoneDamage);
		audio_play_sound_player(snd_zone,playerControl);
		alarm[1] = 60;
	}
}





