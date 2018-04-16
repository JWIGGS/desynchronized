var xPos = argument0; ///@param x
var yPos = argument1; ///@param y
var theta = argument2; ///@param angle
var length = argument3; ///@param length
var obj = argument4; ///@param obj

if(length<2){
	return length/2;	
}

//first half collision
if(collision_line(xPos,yPos,xPos+lengthdir_x(length/2,theta),yPos+lengthdir_y(length/2,theta),obj,true,true)!=noone){
	return raycast_length(xPos,yPos,theta,length/2,obj);
}
else if(collision_line(xPos+lengthdir_x(length/2,theta),yPos+lengthdir_y(length/2,theta),xPos+lengthdir_x(length,theta),yPos+lengthdir_y(length,theta),obj,true,true)!=noone){
	return (length/2) + raycast_length(xPos+lengthdir_x(length/2,theta),yPos+lengthdir_y(length/2,theta),theta,length/2,obj);
}
else{
	return length;	
}


