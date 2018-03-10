var object = argument0; ///@param object
var damage = argument1; ///@param damage

with(object){
	hp -= damage*global.multiplierDamage;
	alarm[5] = 2;
	
	//damage taken script
	event_user(11);
	
	
	if(hp<=0){

		
		event_user(5);
	}
}
