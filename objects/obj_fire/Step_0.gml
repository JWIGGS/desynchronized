/// @description 
image_index = irandom_range(0,image_number);
image_alpha = clamp(image_alpha+.1,0,1);

var distance = point_distance(startX,startY,x,y);

spd -= .4;
if(spd <= 0){
	instance_destroy();
}

xSpd = lengthdir_x(spd,angle);
ySpd = lengthdir_y(spd,angle);
	
collisionObject = instance_position(x+xSpd,y+ySpd,par_destructable);
	
if(instance_exists(parent) and collisionObject != noone and instance_exists(collisionObject) and collisionObject!=parent and ((instance_exists(coverObject) and collisionObject!=coverObject) or !instance_exists(coverObject))){

	if(collisionObject.object_index = obj_player){
			
		if(global.friendlyFire or collisionObject.teamNumber!= parent.teamNumber){

			collisionObject.shotFromX = parent.x;
			collisionObject.shotFromY = parent.y;
				
			var counterAngle = abs(angle_normalize(collisionObject.imageAngle)-angle_normalize(angle));
				
			if(collisionObject.weapon="shield" and counterAngle>180-45 and counterAngle<180+45){
					
				audio_sound_pitch(audio_play_sound_player(snd_shield_deflect,collisionObject.playerControl),random_range(.8,1.2));
					
				damage_object(collisionObject,ceil(.2*damage*damage_falloff_multiplier(rangeEffective,range,distance)));
				instance_destroy();
			}
			else{
				
				damage_object(collisionObject,ceil(damage*damage_falloff_multiplier(rangeEffective,range,distance)));
				instance_destroy();
			}
		}
					
	}
	else if(object_is_ancestor(collisionObject.object_index,par_cover)){
			
		if(distance>20){
			damage_object(collisionObject,ceil(damage*damage_falloff_multiplier(rangeEffective,range,distance)));
			instance_destroy();
		}
		else{
			coverObject = collisionObject;	
		}
			
	}
	else{
		damage_object(collisionObject,ceil(damage*damage_falloff_multiplier(rangeEffective,range,distance)));
		instance_destroy();
	}


		
}

x+=xSpd;
y+=ySpd;

repeat(irandom_range(1,3)){
	with(instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth,obj_fire_effect)){
		image_angle = other.angle+random_range(-10,10);
	}
}