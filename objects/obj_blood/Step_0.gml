/// @description 
spd -= decel;
spd = clamp(spd,0,5);

x += lengthdir_x(spd,image_angle);
y += lengthdir_y(spd,image_angle);

