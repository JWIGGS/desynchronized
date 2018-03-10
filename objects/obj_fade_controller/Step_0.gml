/// @description update fade

fadePrev = fade;

if(fade){
	alpha += fadeDirection/30;	
	
	if(alpha=1 or alpha = 0){
		fade = false;
		global.mode += " finished";
	}
}