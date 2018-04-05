/// @description initialize camera

x = (room_width/4) + ((room_width/2)*player);
y = room_height-360;

var playerObject = global.playerControlObject[player];

targetX = playerObject.x;
targetY = playerObject.y;
zoom = 1;


angle = 0;
targetAngle = 90-playerObject.imageAngle;

angleSpd = abs(angle-targetAngle)/180;