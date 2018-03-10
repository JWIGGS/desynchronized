var inputString = argument0; ///@param inputString
var returnString = "";
for(var i = 1; i<string_length(inputString)+1; i++){
	if(char_is_upper(string_char_at(inputString,i)) and !char_is_upper(string_char_at(inputString,i+1)) and !char_is_upper(string_char_at(inputString,i-1))){
		returnString += " ";
	}
	returnString += string_char_at(inputString,i);
}

return returnString;
