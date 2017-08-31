/// niveles_cual(ppmap)
/*
    Devuelve el nivel actual del mapa
    Default: 0
*/
var ppmap = argument0;
if (instance_exists(objNivelManager) == false) return 1;

with(objNivelManager) {
    if (is_undefined(niveles[? ppmap])) {
        niveles[? ppmap] = string(1);
        niveles_save(json_encode(niveles))
        return 1;
    } else {
        return real(niveles[? ppmap]);
    }
}

