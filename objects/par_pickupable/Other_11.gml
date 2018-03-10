/// @description movement

spd += smooth_to_target(0,spd,20);

//travelling more horizontally

spd = spd/20;

creationTime ++;

if(spd!=0){
	
	repeat(20){
	
		if(creationTime<5){
			if(collision_check(lengthdir_x(spd,angle),0,par_cover) and coverObject =-1){
				coverObject = instance_place(x+lengthdir_x(spd,angle),y+lengthdir_y(spd,angle),par_cover);
			}
		}
	
		if(coverObject = -1 or(coverObject!=-1 and !collision_check(lengthdir_x(spd,angle),0,coverObject))){
			if(collision_movement(lengthdir_x(spd,angle),0,par_collideable) or x>room_width or x<0){
				if(abs(lengthdir_x(spd,angle))>abs(lengthdir_y(spd,angle))){
					angle = -angle +180;
					coverObject = -1;
				}
				//travelling more vertically
				else{
					angle = -angle;
					spd = -spd;
					coverObject = -1;
				}
	
	
				spd /=2;
	
			}
		}

		x += lengthdir_x(spd,angle);

		if(coverObject = -1 or(coverObject!=-1 and !collision_check(0,lengthdir_y(spd,angle),coverObject))){
			if(collision_movement(0,lengthdir_y(spd,angle),par_collideable) or y>room_height or y<0){
				if(abs(lengthdir_x(spd,angle))>abs(lengthdir_y(spd,angle))){
					angle = -angle +180;
					spd = -spd;
					coverObject = -1;
				}
				//travelling more vertically
				else{
					angle = -angle;
					coverObject = -1;
		
				}
	
				spd /=2;
	
	

			}
		}

		y += lengthdir_y(spd,angle);

	}

	spd = spd*20;

}
