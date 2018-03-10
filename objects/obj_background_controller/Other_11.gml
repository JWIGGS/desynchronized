/// @description add dynamic to track

dynamicPrev = dynamic;

dynamic = clamp(dynamic + dynamicDirection,2,sndAmount);


if(room = rm_menu and random_chance(.4)){
	dynamicDirection = -sign(dynamicDirection);
}

if(dynamic != dynamicPrev){
	
	//choose to change dynamic direction
	if(dynamic<0 and random_chance(.3)){
		dynamicDirection = -sign(dynamicDirection);
	}

	
	if(dynamic>dynamicPrev){
		
		//increase dynamic
		event_user(5);
		
	}
	else if(dynamic<dynamicPrev){
		
		
		//drecrease dynamic
		event_user(4);

	}

}
else{
	dynamicDirection = -sign(dynamicDirection);
}
