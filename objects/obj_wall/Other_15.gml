/// @description 
top = instance_place(x,y-1,object_index);
bottom = instance_place(x,y+1,object_index);
left = instance_place(x-1,y,object_index);
right = instance_place(x+1,y,object_index);

if(instance_exists(top)){
	top.defined = false;
}

if(instance_exists(bottom)){
	bottom.defined = false;
}

if(instance_exists(left)){
	left.defined = false;
}

if(instance_exists(right)){
	right.defined = false;
}


instance_destroy();