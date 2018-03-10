var array = argument0; ///@param array
var width = argument1; ///@param width
var height = argument2; ///@param height
var value = argument3; ///@param value


for(var i = 0; i<width; i++){
	for(var j = 0;j<height; j++){
		array[@i,j] = value;
	}
}
