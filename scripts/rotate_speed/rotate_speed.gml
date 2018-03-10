var currentAngle = angle_normalize(argument0); ///@param currentAngle
var targetAngle = angle_normalize(argument1);///@param targetAngle
var angleSpeed = argument2; ///@param speed

var clockwiseChange = true;

if(abs(currentAngle-targetAngle)>angleSpeed){
	return currentAngle + (-angleSpeed*sign(angle_difference(currentAngle,targetAngle)));
}
return targetAngle;