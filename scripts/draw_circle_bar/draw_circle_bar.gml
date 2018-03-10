///@param x
///@param y
///@param radius
///@param thickness
///@param maxsegments
///@param segments
///@param startangle
///@param totalangle
///@param direction
///@param colour

var anglechange = (argument7/argument4)*(pi/180)
var i = argument6*(pi/180)

var ax = argument0+(cos(i)*argument2)
var ay = argument1-(sin(i)*argument2)

var bx = argument0+(cos(i)*(argument2+argument3))
var by = argument1-(sin(i)*(argument2+argument3))

repeat(argument5) {
    i += argument8 * anglechange
    
    var cx = argument0+(cos(i)*argument2)
    var cy = argument1-(sin(i)*argument2)
    
    var dx = argument0+(cos(i)*(argument2+argument3))
    var dy = argument1-(sin(i)*(argument2+argument3))
    
    draw_triangle_colour(ax,ay,bx,by,dx,dy,argument9,argument9,argument9,0)
    draw_triangle_colour(ax,ay,cx,cy,dx,dy,argument9,argument9,argument9,0)
    
    ax = cx
    ay = cy
    
    bx = dx
    by = dy
}
