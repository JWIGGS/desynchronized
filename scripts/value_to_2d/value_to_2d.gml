var value = argument0; ///@param value
var returnValue = argument1; ///@param x/y
var width = argument2; ///@param width

switch (returnValue){
	case "x":
		return value mod width;
		break;

	case "y":
		return value div width;
		break;
	default: return 0;

}