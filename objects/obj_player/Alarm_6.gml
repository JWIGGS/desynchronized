/// @description passive regen add
alarm[6] = 60;

if(hp<100 and global.healthRegen){
	heal_object(self,5);
}