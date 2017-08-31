
var __obj = argument0;
with(__obj) {
    var xoff = sprite_get_width(image)/2;
    var yoff = sprite_get_height(image)/2;
    if (DEBUG) {
        show_debug_message("xoff: "+string(xoff)+", yoff:"+string(yoff))
    }
    sprite_set_offset(image, xoff,yoff)
}
