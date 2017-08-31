/// asignar_sprite_a_pieza(posicion, imagen, tamano)

with(objPieza) {
    if (pos == argument0) {
        //pos = argument0
        sprite_index = argument1
        var ws = (1*sprite_get_width(argument1))/argument2;
        var hs = (1*sprite_get_height(argument1))/argument2;
        image_xscale = 1/ws;
        image_yscale = 1/hs;
        angle = irandom_range(1,3);
        image_angle = ds_list_find_value(angles, angle);
    }
}


