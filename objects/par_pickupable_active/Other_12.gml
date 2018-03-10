/// @description range

//player in range
var nearestPlayer = instance_nearest(x,y,obj_player);
inRange = instance_exists(nearestPlayer) and distance_to_object(nearestPlayer)<16;
