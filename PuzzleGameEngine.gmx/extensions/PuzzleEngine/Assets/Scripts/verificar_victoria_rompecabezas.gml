/// verificar_victoria_rompecabezas()

if (piezas_posicionadas_todas() == true) {
    
    if (piezas_bien_posicionadas_todas() == true) {
        efecto_victoria()    
        with(objVariableGlobales_Rompecabeza) event_user(2) // celebrar victoria
        global.victoria = true;
    } else {
        efecto_fallaste()
    }
    
}
