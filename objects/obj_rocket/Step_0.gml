/// @description collision checking and bullet effect



flightTime++;
spd = clamp(spd+.2,0,10);

xSpd = lengthdir_x(spd,angle);
ySpd = lengthdir_y(spd,angle);

if(point_distance(startX,startY,x,y)>weapon_get_data(weaponDataRangeMax,weapon)){
	event_user(5);
}

var distance = 0;

while(distance<spd){

	var collisionObject = instance_position(x+lengthdir_x(distance,angle),y+lengthdir_y(distance,angle),par_destructable);

	if(collisionObject !=noone){
	
		if(coverObject = -1 and flightTime<5 and object_is_ancestor(collisionObject.object_index,par_cover)){
			coverObject = collisionObject;	
		}
	
		if(collisionObject != coverObject){
		
			if(collisionObject.object_index = obj_player){
				if(global.friendlyFire or collisionObject.teamNumber!= parentTeamNumber){
					event_user(5);	
				}
			}
			else{
				event_user(5);	
			}
		}
	
	}
	
	distance ++;

}

if(x<0 or x>room_width or y<0 or y>room_height){
	event_user(5);	
}

x += xSpd;
y += ySpd;



