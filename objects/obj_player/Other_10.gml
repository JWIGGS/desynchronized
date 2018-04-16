/// @description movement and aiming player control

var xPrev = x;
var yPrev = y;
	
//aiming
	
event_user(2);
	
	
var spdVar = spdWalk;
	
if(aiming){
	spdVar = spdAim;	
}
	
var spd = spdVar*weapon_get_data(weaponDataSpeedMultiplier,weapon);
	
	
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
	


if(collision_movement(xSpd,0,par_collideable) or collision_movement(xSpd,0,par_indestructable)){
	xSpd = 0;	
}

x += xSpd;


if(collision_movement(0,ySpd,par_collideable) or collision_movement(0,ySpd,par_indestructable)){
	ySpd = 0;	
}
y += ySpd;


x = clamp(x,0,room_width);
y = clamp(y,0,room_height);

if(place_meeting(x,y,par_collideable) or place_meeting(x,y,par_indestructable)){
	x = xPrev;
	y = yPrev;
}
