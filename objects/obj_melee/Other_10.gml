/// @description 

x = parent.x+lengthdir_x(weapon_get_data(weaponDataOffsetX,parent.weapon),angle);
y = parent.y+lengthdir_y(weapon_get_data(weaponDataOffsetX,parent.weapon),angle);

image_blend = global.color[parent.teamNumber];
image_alpha = alarm[0]/3;


//deal damage
with(par_destructable){

	var distance = point_distance(x,y,other.x,other.y);

	var friendlyFireCheck = true;
	
	if(object_index = obj_player){
		if(teamNumber = other.parent.teamNumber and !global.friendlyFire){
			friendlyFireCheck = false;	
		}
	}
	
	if(distance<other.range and id!=other.parent.id and friendlyFireCheck){
		
		shotFromX = other.parent.x;
		shotFromY = other.parent.y;
		
		damage_object(id,other.damage);
		
	}
	
	
}


