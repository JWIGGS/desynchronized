var effectiveRange = argument0; ///@param effetiveRange;
var maxRange = argument1; ///@param maxRange
var range = argument2; ///@param range


if(range<effectiveRange){
	return ((1/(-10*effectiveRange))*range)+1;
}
if(range<maxRange){
	return ((-.9/(maxRange-effectiveRange))*range) + ((.9*maxRange)/(maxRange-effectiveRange));
}

return 0;
