// buscar cabeza

var cabeza = 0;

for(var i = 0; i < ds_grid_width(global.imagenes); i++) {
    for(var j = 0; j < ds_grid_height(global.imagenes); j++) {
        cabeza = encontrar_obj(i,j);
        
        if (verificar_adyacencia(cabeza,"arriba",global.bloquetamano) and 
        verificar_adyacencia(cabeza,"derecha",global.bloquetamano) and
        verificar_adyacencia(cabeza, "izquierda", global.bloquetamano) and
        verificar_adyacencia(cabeza, "abajo", global.bloquetamano)) {
            // todo va bien
            continue;
        } else return false;
    }
}

return true;



