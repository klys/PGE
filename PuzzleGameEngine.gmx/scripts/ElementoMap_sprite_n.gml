/// ElementoMap_sprite_n("object_type", n)

switch(argument0) {
    case "static":
        with(objElemEstatico) {
            if DEBUG show_debug_message("buscando:"+string(argument1)+" n: "+string(n))
            if (n == argument1) return image;
        }
    break;
    case "gif":
        with(objElemAnimado) {
            if (object_get_name(id) != "objElemMovil") {
                if (n == argument1) return image;
            }
        }
    break;
}

return noone;
