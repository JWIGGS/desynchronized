var xPos = argument0;///@param x
var yPos = argument1;///@param y
var weaponSpawn = argument2;///@param weapon

var instance = instance_create_depth(xPos,yPos,0,obj_weapon)

with(instance){
	weapon = weaponSpawn;
}

return instance;