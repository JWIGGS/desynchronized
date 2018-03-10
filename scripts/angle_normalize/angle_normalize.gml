var angle = argument0;///@param angle

while(angle<0){
	angle +=360;
}
while(angle>=360){
	angle -=360;
}

return angle;