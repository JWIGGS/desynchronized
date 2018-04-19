/// @description ai super smart
if(alarm[7] = -1){
	alarm[7] = irandom_range(10,20);
}



if(alarm[7] = 0){
	
	aiAimX = aiTargetX;
	aiAimY = aiTargetY;
			
	aiFire = false;
	
	if(random_chance(.2)){
		aiTargetOffsetX = irandom_range(-256,256) * clamp(weapon_get_data(weaponDataRangeMax,weapon)/192,0,1);
		aiTargetOffsetY = irandom_range(-256,256) * clamp(weapon_get_data(weaponDataRangeMax,weapon)/192,0,1);	
	}
	
	//firing
	if(point_distance(x,y,aiTargetX,aiTargetY)<weapon_get_data(weaponDataRangeMax,weapon) and point_distance(x,y,aiTargetX,aiTargetY)>weapon_get_data(weaponDataRangeAoe,weapon)){
		aiFire = true;
	}

	if(collision_line(x,y,aiTargetX,aiTargetY,obj_glass,true,true)!=noone or collision_line(x,y,aiTargetX,aiTargetY,obj_ice,true,true)!=noone){
		aiFire = true;	
	}
	
	//running away
	var runFrom = instance_nearest(x,y,par_pickupable_active);
	var runFromRange = 0;
	
	if(runFrom = noone){
		for(var i = 0; i<instance_number(par_car)-1; i++){
			if(instance_nearest_nth(x,y,par_car,i).alarm[0]!=-1){
				runFrom = instance_nearest_nth(x,y,par_car,i);
				runFromRange = 128;
			}
		}
	}
	else{
		runFromRange = weapon_get_data(weaponDataRangeAoe,runFrom.weapon)*1.5;
		
		if(point_distance(x,y,runFrom.x,runFrom.y) < runFromRange){
			aiMode = "flee";	
		}	
	}
	
	if(point_distance(x,y,global.zoneX,global.zoneY)>global.zoneRadius){
		aiMode = "zone";	
	}
	
	
	
	
	switch(aiMode){
		case "start":
			
			aiTargetObject = -1;
			
			do{
				with(obj_weapon){
					if(random_chance(.1)){
						other.aiTargetObject = id;	
					}
				}	
			}	
			until(aiTargetObject !=-1 and instance_exists(aiTargetObject));
			
			aiTargetX = aiTargetObject.x;
			aiTargetY = aiTargetObject.y;
			
			
			aiMode = "disperse";
			

			break;
		case "disperse":
			
			if(random_chance(.1) or aiReached or hp!=hpMax){
				
				//choose enemy target
				aiTargetObject = -1;
				
				var validTarget = false;
				with(obj_player){
					if(id!=other.id and teamNumber != other.teamNumber){
						validTarget = true;
					}
				}
				
				if(validTarget){
					do{
						with(obj_player){
							if(id!=other.id and teamNumber != other.teamNumber and random_chance(.3)){
								other.aiTargetObject = id;	
							}
						}	
					}	
					until(aiTargetObject !=-1 and instance_exists(aiTargetObject));
				
					aiTargetX = aiTargetObject.x;
					aiTargetY = aiTargetObject.y;
				
					aiMode = "tactical";
				
				}
				
			}
			
			break;
		case "pickup":
			//move towards weapon
			break;
		case "tactical":
			//move towards player
			
			if(!instance_exists(aiTargetObject)){
				
				aiTargetObject = -1;
				
				var validTarget = false;
				with(obj_player){
					if(id!=other.id and teamNumber != other.teamNumber){
						validTarget = true;
					}
				}
				
				if(validTarget){
				
					do{
						with(obj_player){
							if(id!=other.id and teamNumber != other.teamNumber and random_chance(.3)){
								other.aiTargetObject = id;	
							}
						}	
					}	
					until(aiTargetObject !=-1 and instance_exists(aiTargetObject));
				
				}
			}
			
			if(instance_exists(aiTargetObject)){
				
				aiAimX = aiTargetObject.x;
				aiAimY = aiTargetObject.y;
				
				var range = point_distance(x,y,aiTargetObject.x,aiTargetObject.y);
			
				if(range>weapon_get_data(weaponDataRangeEffective,weapon)){
					
					aiTargetX = aiAimX+aiTargetOffsetX;
					aiTargetY = aiAimY+aiTargetOffsetY;
					
					
				}
				else if(range<weapon_get_data(weaponDataRangeEffective,weapon)/random_range(2,3)){
					var targetAngle = point_direction(x,y,aiTargetX,aiTargetY) + irandom_range(-45,45);
					var targetRange = irandom_range(128,256);

					aiTargetX = lengthdir_x(-targetRange,targetAngle)+aiTargetOffsetX;
					aiTargetY = lengthdir_y(-targetRange,targetAngle)+aiTargetOffsetY;
					
					
				}
				else{
				
					aiTargetX = x + aiTargetOffsetX;
					aiTargetY = y + aiTargetOffsetY;	
				}
			
			}
			
			break;
		case "flee":
		
			if(instance_exists(aiTargetObject)){
				aiTargetX = aiTargetObject.x;
				aiTargetY = aiTargetObject.y;
			}

			if(instance_exists(runFrom)){
				var targetAngle = point_direction(x,y,runFrom.x,runFrom.y) + irandom_range(-50,50);
				var targetRange = irandom_range(128,256);

				aiTargetX = lengthdir_x(-targetRange,targetAngle);
				aiTargetY = lengthdir_y(-targetRange,targetAngle);
				
				if(point_distance(x,y,runFrom.x,runFrom.y) >runFromRange){
					aiMode = "tactical";	
				}
				
			}
			else{
				aiMode = "tactical";
			}
			
			
			break;
			
		case "zone":
			if(instance_exists(aiTargetObject)){
				aiAimX = aiTargetObject.x;
				aiAimY = aiTargetObject.y;
			}
			
			aiTargetX = global.zoneX;
			aiTargetY = global.zoneY;
			
			

		
	}
	

	//ai pathfinding
	if(aiMap =-1){
		aiMap = mp_grid_create(4,4,(room_width/8)-1,(room_height/8)-1,8,8);
	}
	else{
		mp_grid_clear_all(aiMap);
	}
	

	mp_grid_add_instances(aiMap,par_avoid,true);
	
	
	if(raycast_length(x,y,imageAngle,1024,par_collideable)<weapon_get_data(weaponDataRangeAoe,weapon)*2){
		aiFire = false;
	}
	
	
	
	
			
	
}

var xPrev = x;
var yPrev = y;

//move to target
if(mp_grid_path(aiMap,aiPath,x,y,aiTargetX,aiTargetY,true)){

	var position = 0;
	do{
		position++;
	}
	until(point_distance(x,y,path_get_point_x(aiPath,position),path_get_point_y(aiPath,position))>2)

	mp_potential_step_object(path_get_point_x(aiPath,position),path_get_point_y(aiPath,position),spdWalk*sqrt(2),par_avoid);	
}
else{
	mp_potential_step_object(aiTargetX,aiTargetY,spdWalk*sqrt(2),par_avoid);		
}

if(place_meeting(x,y,par_collideable) or place_meeting(x,y,par_indestructable)){
	x = xPrev;
	y = yPrev;
}

aiReached = point_distance(x,y,aiTargetX,aiTargetY)<128;

//aim
imageAngle = rotate_speed(imageAngle,point_direction(x,y,aiAimX,aiAimY),5);


//fire
if(aiFire){
	global.controlShootPressed[teamNumber] = random_chance(.7);	
	global.controlShoot[teamNumber] = global.controlShootPressed[teamNumber];
}



