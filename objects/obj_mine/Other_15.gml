/// @description create priximity mine
with(instance_create_depth(x,y,depth,obj_trigger)){
	teamNumber = other.teamNumber;	
}

instance_destroy();