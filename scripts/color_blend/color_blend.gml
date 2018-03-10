var color1=argument0; ///@param color0
var color2=argument1; ///@param color1
var color1_percent=argument2; ///@param percent
var color2_percent=1-color1_percent


return make_color_rgb((color_get_red(color1)*color1_percent)+(color_get_red(color2)*color2_percent),(color_get_green(color1)*color1_percent)+(color_get_green(color2)*color2_percent),(color_get_blue(color1)*color1_percent)+(color_get_blue(color2)*color2_percent));

