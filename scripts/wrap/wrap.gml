var value = argument0; ///@param value
var minimum = argument1; ///@param min
var maximum = argument2; ///@param max

if(value<minimum){
	return value+(maximum-minimum);	
}
if(value>=maximum){
	return value-(maximum-minimum);
}
return value;