/// @description trigger events

//actions control
event_user(1);


//change weapon

if(global.weapon[obj_menu_controller.weaponSelected[teamNumber]] != weapon){
	if(weapon_get_data(weaponDataType,global.weapon[obj_menu_controller.weaponSelected[teamNumber]])!="throwable"){
		weapon = global.weapon[obj_menu_controller.weaponSelected[teamNumber]];
		throwableWeapon = "";
		throwableTime = -1;
		throwableActive = false;
		throwablePressed = true;
		throwablePower = 0;
		throwablePowerHold = false;

	}
	else{
		throwableWeapon = global.weapon[obj_menu_controller.weaponSelected[teamNumber]];
		
	}
	event_user(6);
}


//throwable timer
if(throwableActive){
	throwableTime --;	
		
	if(throwableTime<=0){
		//drop throwable item (instantly activates)
		event_user(12);	
		exit;
	}
		
}

	
	
	





