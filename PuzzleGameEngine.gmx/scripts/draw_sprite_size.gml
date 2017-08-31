/// draw_sprite_size(sprite, subimage, x,y, widht, height, rotation, color, alpha)

var xscale = argument4/sprite_get_width(argument0);
var yscale = argument5 / sprite_get_height(argument0);

draw_sprite_ext(argument0,argument1,argument2,argument3,xscale,yscale,argument6,argument7,argument8) 
