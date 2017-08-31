global.listo = false;
var speedpath = 15;
switch(argument0) {
    case "arriba":
        with(argument1) {
            path_start(asset_get_index("pathArriba"+string(global.bloquetamano)),speedpath,path_action_stop,false);
        }
    break;
    case "abajo":
        with(argument1) {
            path_start(asset_get_index("pathAbajo"+string(global.bloquetamano)),speedpath,path_action_stop,false);
        }
    break;
    case "derecha":
        with(argument1) {
            path_start(asset_get_index("pathDerecha"+string(global.bloquetamano)),speedpath,path_action_stop,false);
        }
    break;
    case "izquierda":
        with(argument1) {
            path_start(asset_get_index("pathIzquierda"+string(global.bloquetamano)),speedpath,path_action_stop,false);
        }
    break;
}

global.intentos++;
