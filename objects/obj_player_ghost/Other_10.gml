/// @description movement and aiming player control


	
//aiming
event_user(2);

var spd = spdWalk;
	
//relative movement
var moveDirectionX = global.controlMoveX[teamNumber]*spd;
var moveDirectionY = global.controlMoveY[teamNumber]*spd;
	
if(moveDirectionX !=0 or moveDirectionY!=0){
	var moveAngle = imageAngle-point_direction(0,0,moveDirectionX,-moveDirectionY)-90;
	var moveScale = abs(point_distance(0,0,moveDirectionX,moveDirectionY))
		
	xSpd = lengthdir_x(spd*moveScale,moveAngle);
	ySpd = lengthdir_y(spd*moveScale,moveAngle);
}
else{
	xSpd = 0;
	ySpd = 0;
}
	


x += xSpd;

y += ySpd;


x = clamp(x,0,room_width);
y = clamp(y,0,room_height);
