var xPos = argument0; ///@param x
var yPos = argument1; ///@param y
var theta = argument2; ///@param angle
var length = argument3; ///@param length
var obj = argument4; ///@param obj

raycastlist[0,0] = -1;
raycastamount = 0;



do{
	raycastlist[raycastamount,0] = raycast_object(xPos,yPos,theta,length,obj);
	raycastlist[raycastamount,1] = raycast_length(xPos,yPos,theta,length,obj);
	
	instance_deactivate_object(raycastlist[raycastamount,0]);
	
	raycastamount++;
	
}
until(raycast_object(xPos,yPos,theta,length,obj) = noone);

for(var i = 0; i<raycastamount; i++){
	instance_activate_object(raycastlist[i,0]);	
}

return raycastlist;


