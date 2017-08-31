/// piezas_posicionadas_todas()

with(objPieza) {
    if (posicionado == false) {
        if (DEBUK) show_debug_message("Falta Pieza: "+pos)
        return false;
    }
}

return true;
