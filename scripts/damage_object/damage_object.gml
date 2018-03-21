var object = argument0; ///@param object
var damage = argument1; ///@param damage

with(object){
	hp -= damage*global.multiplierDamage;
	
	//damage flash
	alarm[5] = 2;
	
	//health bar
	alarm[3] = 180;
	
	//passive regen cooldown
	alarm[4] = 600;
	
	//passive regen time
	alarm[6] = -1;
	
	//damage taken script
	event_user(11);
	
	
	if(hp<=0){
		event_user(5);
	}
}
