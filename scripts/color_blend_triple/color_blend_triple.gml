var color1=argument0; ///@param color0
var color2=argument1; ///@param color.5
var color3=argument2; ///@param color1

var percent=argument3; ///@param percent

if (percent>=.5){
    return color_blend(color1,color2,(percent-.5)*2);
}
else{
    return color_blend(color2,color3,(percent+.5)/2);
}

