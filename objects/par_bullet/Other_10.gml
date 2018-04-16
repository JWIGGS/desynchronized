/// @description collision checking and bullet effect

var collisionObject = -1;
var coverObject = -1;

//get parentvars before parent dies
parentTeamNumber = parent.teamNumber;
parentImageAngle = parent.imageAngle;


list = raycast_object_list(rotate_around_point(parent.x+weapon_get_data(weaponDataOffsetY,parent.weapon),parent.y,parent.x,parent.y,angle,"x"),rotate_around_point(parent.x+weapon_get_data(weaponDataOffsetY,parent.weapon),parent.y,parent.x,parent.y,angle,"y"),angle,range,par_destructable)

for(var i = 0; i<array_height_2d(list); i++){
	collisionObject = list[i,0];
	
	if(collisionObject != noone and instance_exists(collisionObject) and collisionObject!=parent and ((instance_exists(coverObject) and collisionObject!=coverObject) or !instance_exists(coverObject))){
		
		//hit player
		if(collisionObject.object_index = obj_player){
			
			if(collisionObject.teamNumber= parent.teamNumber and weapon_get_data(weaponDataHeal,parent.weapon)){
				distance = list[i,1];
				i = array_height_2d(list);
				
				heal_object(collisionObject,ceil(damage*damage_falloff_multiplier(rangeEffective,range,distance)));	
				
			}
			
			else if(global.friendlyFire or collisionObject.teamNumber!= parent.teamNumber){
				distance = list[i,1];
				i = array_height_2d(list);
				
				
				collisionObject.shotFromX = parent.x;
				collisionObject.shotFromY = parent.y;
				
				var counterAngle = abs(angle_normalize(collisionObject.imageAngle)-angle_normalize(angle));
				
				//shield
				if(collisionObject.weapon="shield" and counterAngle>180-80 and counterAngle<180+80){
					
					audio_sound_pitch(audio_play_sound_player(snd_shield_deflect,collisionObject.playerControl),random_range(.8,1.2));
					
					damage_object(collisionObject,ceil(.2*damage*damage_falloff_multiplier(rangeEffective,range,distance)));
				}
				
				//no shield
				else{
					damage_object(collisionObject,ceil(damage*damage_falloff_multiplier(rangeEffective,range,distance)));
				}
				
				
			}
			
			
					
		}
		//hit cover
		else if(object_is_ancestor(collisionObject.object_index,par_cover)){
			
			if(list[i,1]>20){
				distance = list[i,1];
				i = array_height_2d(list);
				
				damage_object(collisionObject,ceil(damage*damage_falloff_multiplier(rangeEffective,range,distance)));
			}
			else{
				coverObject = collisionObject;	
			}
			
		}
		else{
			distance = list[i,1];
			i = array_height_2d(list);
			
			damage_object(collisionObject,ceil(damage*damage_falloff_multiplier(rangeEffective,range,distance)));
		}

		distance -= weapon_get_data(weaponDataOffsetX,parent.weapon);
		
	}
	else{
		distance = range;
	}
	
}



if(weapon_get_data(weaponDataMuzzleFlash,parent.weapon)){
	with(instance_create_depth(x,y,depth-1,obj_muzzle_flash)){
		image_angle = other.parentImageAngle;
	}
}

alarm[0] = 3;


