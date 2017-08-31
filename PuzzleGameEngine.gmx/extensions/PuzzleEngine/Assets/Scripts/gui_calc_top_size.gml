/// gui_calc_top_size()
/*
    Funcion para calcular el tamano de la parte
    superior en la pantalla de los puzzle
*/
/*
var color = make_color_rgb(255,128,255);
var lockcolor = make_color_rgb(255,255,255);
var surface = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
surface_copy(surface,0,0,application_surface)

surface_set_target(surface)
var yyy = 0;
while(lockcolor != color) {
    lockcolor = draw_getpixel(3,yyy)
    var r = colour_get_red(lockcolor);
    var g = colour_get_green(lockcolor);
    var b = colour_get_blue(lockcolor);
    show_debug_message("Color Found: "+string(lockcolor)+" ("+string(r)+", "+string(g)+", "+string(b)+") in y: "+string(yyy))
    yyy++;
    if (yyy == 700) {
        surface_reset_target()
        return -1;
    }
}
surface_reset_target()
surface_free(surface)
show_debug_message("TopSize:"+string(yyy))
return yyy;
*/

return (gui_h/2) - (gui_w/2);
