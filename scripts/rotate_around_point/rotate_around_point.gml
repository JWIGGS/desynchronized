var pointToRotateX = argument0; ///@param pointToRotateX
var pointToRotateY = argument1; ///@param pointToRotateY
var rotateAroundX = argument2; ///@param rotateAroundX
var rotateAroundY = argument3; ///@param rotateAroundY
var angle = argument4+point_direction(rotateAroundX,rotateAroundY,pointToRotateX,pointToRotateY) -45; ///@param angle
var returnType = argument5; ///@param returnType

var distance = abs(point_distance(rotateAroundX,rotateAroundY,pointToRotateX,pointToRotateY))/sqrt(2);

switch(returnType){
	case "x":
		return rotateAroundX + lengthdir_x(distance,angle) - lengthdir_y(distance,angle);
		break;
	case "y":
		return rotateAroundY + lengthdir_x(distance,angle) + lengthdir_y(distance,angle);
		break;
}
