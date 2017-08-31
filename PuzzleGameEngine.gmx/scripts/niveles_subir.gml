/// niveles_subir(ppmap)
var ppmap = argument0;
if (instance_exists(objNivelManager) == false) exit;

with(objNivelManager) {
    
    var nivel = real(niveles[? ppmap]);
    if (global.nivel != nivel) exit;
    nivel++;
    niveles[? ppmap] = string(nivel);
    niveles_save(json_encode(niveles))
}
