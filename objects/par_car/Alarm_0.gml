/// @description self destruct timer

with(instance_create_depth(x,y,depth,obj_explosion)){
	parent = other.id;
	event_user(0);	
}

instance_destroy();
