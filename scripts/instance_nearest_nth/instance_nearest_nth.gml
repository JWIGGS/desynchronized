var pointx = argument0; ///@param x
var pointy = argument1; ///@param y
var object = argument2; ///@param object
var n = argument3; ///@param nth
n = min(max(1,n),instance_number(object));
var list = ds_priority_create();
var nearest = noone;
with (object) ds_priority_add(list,id,distance_to_point(pointx,pointy));
repeat (n) nearest = ds_priority_delete_min(list);
ds_priority_destroy(list);
return nearest;