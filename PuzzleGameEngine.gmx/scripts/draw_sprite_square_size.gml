/// draw_sprite_square_size(sprite, subimage, x,y, size, rotation, color, alpha)

var xscale = argument4/sprite_get_width(argument0);
var aux = xscale * sprite_get_width(argument0);
var yscale = aux / sprite_get_height(argument0);

draw_sprite_ext(argument0,argument1,argument2,argument3,xscale,yscale,argument5,argument6,argument7) 
