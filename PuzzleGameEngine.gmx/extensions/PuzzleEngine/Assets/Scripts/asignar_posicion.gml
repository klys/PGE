with(objMemoriaBloque) {
    if (posicion_ya_existe(argument0)) {
        return 0;
    }
    if (posicion == "") { // posicion no asignada
        posicion = argument0;
        show_debug_message("posicion asignada: "+posicion+" obj:"+string(id))
    }
}
