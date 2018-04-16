/// @description ai super dumb

if(alarm[7] = -1){
	alarm[7] = irandom_range(5,10);
}


//descisions
if(alarm[7] = 0){
	
	if(!instance_exists(aiTargetObject) or aiTargetObject =-1){
		with(obj_player){
			if(playerControl and id!=other.id){
				other.aiTargetObject = id;	
			}
		}
	}
	
	if(instance_exists(aiTargetObject)){
	
		var targetPointX = aiTargetObject.x+irandom_range(-16,16);
		var targetPointY = aiTargetObject.y+irandom_range(-16,16);
		var targetAngle = point_direction(x,y,targetPointX,targetPointY);
		var targetLength = point_distance(x,y,targetPointX,targetPointY);
		var targetLos = !collision_line(x,y,targetPointX,targetPointY,par_collideable,true,true)
	
	
	
		var targetRange = (targetLength - (weapon_get_data(weaponDataRangeEffective,weapon)/random_range(1.7,2)));
	
		aiFire = collision_check(16,0,par_collideable)or collision_check(0,16,par_collideable);
	
		switch(aiMode){
			
			case "start":
			
				aiTargetAngle = irandom_range(0,360);
				aiTargetX = lengthdir_x(random_range(128,256),aiTargetAngle);
				aiTargetY = lengthdir_y(random_range(128,256),aiTargetAngle);
				
				aiMode = "spread";
				
				break;
				
			case "spread":
				if(random_chance(.05) or hp!=hpMax){
					aiMode = "chase"
				}
				else if(random_chance(.2)){
					aiMode = "start";	
				}
				
				break;
			
			case "chase":	
				aiTargetX = x + lengthdir_x(targetRange,targetAngle)+irandom_range(-weapon_get_data(weaponDataRangeMax,weapon)/8,weapon_get_data(weaponDataRangeMax,weapon)/8) + irandom_range(-32,32);
				aiTargetY = y + lengthdir_y(targetRange,targetAngle)+irandom_range(-weapon_get_data(weaponDataRangeMax,weapon)/8,weapon_get_data(weaponDataRangeMax,weapon)/8) + irandom_range(-32,32);
				aiTargetAngle =  targetAngle;
			
				if(random_chance(.08)){
					with(obj_player){
						if(id!=other.id and teamNumber!=other.teamNumber and random_chance(.3)){
							other.aiTargetObject = id;	
						}
					}
				}
				
				if(targetLos){
					
					if(random_chance(.4)){
						aiFire = true;	
					}
				
					if(targetLength<weapon_get_data(weaponDataRangeEffective,weapon)){
						aiMode = "fire"
					}
				
				}
			
				break;
				
			case "fire":
				aiTargetX = x + irandom_range(-32,32);
				aiTargetY = y + irandom_range(-32,32);
				
				if(!targetLength>weapon_get_data(weaponDataRangeMax,weapon) or !targetLos){
					aiMode = "chase"	
				}
				aiFire = true;
				
				break;
			

		
		}
	
	
	
		
	
	
	}

}

//aim
if(aiMode = "fire" and instance_exists(aiTargetObject)){
	var targetPointX = aiTargetObject.x+irandom_range(-16,16);
	var targetPointY = aiTargetObject.y+irandom_range(-16,16);
	aiTargetAngle = point_direction(x,y,targetPointX,targetPointY);	
}


var aimSpeed = rotate_speed(imageAngle,aiTargetAngle,5)

var moveSpd = spdWalk;
if(imageAngle = aimSpeed){
	moveSpd = spdAim;
}
else{
	imageAngle = aimSpeed;
}







if(aiFire){
	global.controlShootPressed[teamNumber] = random_chance(.7);	
	global.controlShoot[teamNumber] = global.controlShootPressed[teamNumber];
}
mp_potential_step_object(aiTargetX,aiTargetY,moveSpd,par_collideable);	











