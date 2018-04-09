var object = argument0; ///@param object
var healing = argument1; ///@param healing

with(object){
	hp += healing*global.multiplierDamage;
	alarm[5] = 2;
	alarm[3] = 180;
	
	
	if(hp>hpMax){
		hp = hpMax;
	}
}


audio_play_sound_player(snd_heal,true);