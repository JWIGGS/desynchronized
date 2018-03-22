/// @description trigger explosion



with(par_destructable){

	var distance = point_distance(x,y,other.x,other.y);
		
	if(distance<other.range and object_index = obj_player){
		shotFromX = other.x;
		shotFromY = other.y;
		
		heal_object(id,other.damage * damage_falloff_multiplier(other.rangeEffective,other.range,distance));
		
	}
}
	


//explosion effect
repeat(irandom_range(8,10)){
	instance_create_depth(x+random_range(-32,32),y+random_range(-32,32),depth-1,obj_hexplosion_effect);
}

//explosion sound
audio_play_sound(snd_explosion,1,false);



instance_destroy();


