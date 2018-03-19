var object = argument0; ///@param object
var healing = argument1; ///@param healing

with(object){
	hp += healing*global.multiplierDamage;
	alarm[5] = 2;
	
	
	if(hp>hpMax){
		hp = hpMax;
	}
}


audio_play_sound(snd_heal,1,false);