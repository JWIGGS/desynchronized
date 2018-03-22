/// @description collision checking and bullet effect

var collisionObject = -1;
var distance = range;
var coverObject = -1;

//get paretn vars before parent dies (if bullet causes player to kill themselves)
var parentTeamNumber = parent.teamNumber;
var parentImageAngle = parent.imageAngle;

for(var i = -16; i<range; i++){
	
	collisionObject = instance_position(x+lengthdir_x(i,angle),y+lengthdir_y(i,angle),par_destructable);
	
	if(collisionObject != noone and instance_exists(collisionObject) and collisionObject!=parent and ((instance_exists(coverObject) and collisionObject!=coverObject) or !instance_exists(coverObject))){

		if(collisionObject.object_index = obj_player){
			

			distance = i;
			i = range;
				
			collisionObject.shotFromX = parent.x;
			collisionObject.shotFromY = parent.y;
				
			var counterAngle = abs(angle_normalize(collisionObject.imageAngle)-angle_normalize(angle));
			
			if(collisionObject.teamNumber!= parent.teamNumber){
			
				if(collisionObject.weapon="shield" and counterAngle>180-80 and counterAngle<180+80){
					
					audio_sound_pitch(audio_play_sound_player(snd_shield_deflect,collisionObject.playerControl),random_range(.8,1.2));
					
					damage_object(collisionObject,ceil(.2*damage*damage_falloff_multiplier(rangeEffective,range,distance)));
				}
				else{
				
					damage_object(collisionObject,ceil(damage*damage_falloff_multiplier(rangeEffective,range,distance)));
				}
			}
			else{
				heal_object(collisionObject,ceil(damage*damage_falloff_multiplier(rangeEffective,range,distance)));
			
			}

					
		}
		else if(object_is_ancestor(collisionObject.object_index,par_cover)){
			
			if(i>20){
				distance = i;
				i = range;
				damage_object(collisionObject,ceil(damage*damage_falloff_multiplier(rangeEffective,range,distance)));
			}
			else{
				coverObject = collisionObject;	
			}
			
		}
		else{
			distance = i;
			i = range;
			damage_object(collisionObject,ceil(damage*damage_falloff_multiplier(rangeEffective,range,distance)));
		}


		
	}
	
	
	
	
}


//create bullet paritcles along line

for(var i =0; i<distance; i++){
	with(instance_create_depth(x+lengthdir_x(i,angle),y+lengthdir_y(i,angle),depth,obj_bullet_effect)){
		image_blend = global.color[parentTeamNumber];
		image_alpha = damage_falloff_multiplier(other.rangeEffective,other.range,i)/2;
	}
}





instance_destroy();


