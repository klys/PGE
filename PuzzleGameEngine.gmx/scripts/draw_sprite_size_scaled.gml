/// draw_sprite_size_scaled(sprite, subimage, x,y, size, rotation, color, alpha)

var xscale = argument4/sprite_get_width(argument0);
//var yscale = argument5 / sprite_get_height(argument0);

draw_sprite_ext(argument0,argument1,argument2,argument3,xscale,xscale,argument5,argument6,argument7) 
