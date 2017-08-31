/*
    script_execute(script, seleccion=undefined, obj, variable)
*/

if not is_undefined(argument0) {
    switch(argument0) {
        case "center":
            with(argument1) {
                sprite_set_offset(image, sprite_get_width(image)/2,sprite_get_height(image)/2)
            }
        break;
        case "zero":
            with(argument1) {
                sprite_set_offset(image,0,0)
            }
        break;
        case "center_bottom":
            with(argument1) {
                sprite_set_offset(image, sprite_get_width(image)/2,sprite_get_height(image))
            }
        break;
    }
}
