/// ElementoNewMap_sprite_n("object_type", n)

switch(argument0) {
    case "static":
        with(objEleEstatico) {
            if DEBUG show_debug_message("buscando:"+string(argument1)+" n: "+string(n))
            if (n == argument1) return image;
        }
    break;
    case "gif":
        with(objEleAnimado) {
            if (object_get_name(id) != "objEleMovil") {
                if (n == argument1) return image;
            }
        }
    break;
}

return noone;
