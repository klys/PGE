/// asignar_sprite(posicion, imagen, tamano)
var nada = argument2;
with(objMemoriaBloque) {
    if (posicion == argument0) {
        tutx = pos_to_x(posicion)
        tuty = pos_to_y(posicion)
        sprite_index = argument1;
        show_debug_message("argument1:"+string(argument1))
        var ws = (1*sprite_get_width(argument1))/argument2;
        var hs = (1*sprite_get_height(argument1))/argument2;
        image_xscale = 1/ws;
        image_yscale = 1/hs;
        //sprite_height = argument2;
        //sprite_width = argument2;
    }
}
