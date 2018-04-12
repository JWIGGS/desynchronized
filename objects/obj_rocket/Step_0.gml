/// @description collision checking and bullet effect

flightTime++;
spd = clamp(spd+.2,0,10);

xSpd = lengthdir_x(spd,angle);
ySpd = lengthdir_y(spd,angle);

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
	
	distance += spd;

}

if(x<0 or x>room_width or y<0 or y>room_height){
	event_user(5);	
}

x += xSpd;
y += ySpd;

repeat(irandom_range(5,8)){
	with(instance_create_depth(rotate_around_point(x-16+random_range(-3,3),y+random_range(-3,3),x,y,image_angle+90,"x"),rotate_around_point(x-16+random_range(-3,3),y+random_range(-3,3),x,y,image_angle+90,"y"),depth,obj_fire_effect)){
		image_angle = other.angle+random_range(-10,10);
	}
	
}


