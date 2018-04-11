var xPos = argument0; ///@param x
var yPos = argument1; ///@param y
var theta = argument2; ///@param angle
var length = argument3; ///@param length
var obj = argument4; ///@param obj

/// @description collision checking and bullet effect

var collisionObject = -1;
var distance = length;
var coverObject = -1;

for(var i = -16; i<length; i++){
	
	collisionObject = instance_position(x+lengthdir_x(i,theta),y+lengthdir_y(i,theta),obj);
	
	if(collisionObject != noone and instance_exists(collisionObject) and collisionObject!=id and ((instance_exists(coverObject) and collisionObject!=coverObject) or !instance_exists(coverObject))){

		if(collisionObject.object_index = obj_player){
			
			if(global.friendlyFire or collisionObject.teamNumber!= id.teamNumber){
				distance = i;
				i = length;
			}
					
		}
		else if(object_is_ancestor(collisionObject.object_index,par_cover)){
			
			if(i>20){
				distance = i;
				i = length;
			}
			else{
				coverObject = collisionObject;	
			}
			
		}
		else{
			distance = i;
			i = length;
		}

	}

}


return distance;



