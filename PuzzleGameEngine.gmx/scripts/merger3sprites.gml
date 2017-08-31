/// merger3sprites(sprite1, sprite2, sprite3)

var sprite1 = argument0;
var sprite2 = argument1;
var sprite3 = argument2;

var size_w = sprite_get_width(sprite1);
var size_h = sprite_get_height(sprite1)*3;

var surface = surface_create(size_w, size_h);

surface_set_target(surface)

draw_sprite(sprite3,0,0,0)
draw_sprite(sprite2,0,0,size_w)
draw_sprite(sprite1,0,0,size_w*2)

surface_reset_target()

var nsprite = sprite_create_from_surface(surface,0,0,size_w, size_h,0,0,0,size_w*2)
surface_free(surface)
return nsprite;
