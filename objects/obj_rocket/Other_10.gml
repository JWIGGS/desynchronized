/// @description collision setup
parentTeamNumber = parent.teamNumber;
parentImageAngle = parent.imageAngle;

xSpd = lengthdir_x(spd,angle);
ySpd = lengthdir_y(spd,angle);
image_angle = angle;

x -= xSpd*4;
y -= ySpd*4;

parentTeamNumber = parent.teamNumber;


