/// @description trigger weapon spawn
if(weapon!=""){
	with(instance_create_depth(x,y,0,obj_weapon)){
		weapon = other.weapon;
	}
}
