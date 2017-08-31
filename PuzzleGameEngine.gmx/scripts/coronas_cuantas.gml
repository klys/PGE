/// coronas_cuantas(ppmap, nivel)
/*
    Retorna cantidad de coronas obtenidos
    -1 si no se ah obtenido ninguna
    1 para corona de plata
    2 para corona de bronze
    3 para corona de oro
*/
var ppmap = argument0;
var nivel = argument1;
if (instance_exists(objCoronasManager) == false) return -1;

with(objCoronasManager) {
    var submap = -1;
    if (is_undefined(map[? ppmap]) == false) submap = json_decode(map[? ppmap]);
    if (submap == -1) {
        //ds_map_destroy(submap)
        return -1;        
    } else {
        var coronas = submap[? "nivel-"+string(nivel)]
        ds_map_destroy(submap)
        if (is_undefined(coronas) == true){
            return -1;
        } else return real(coronas);
    }
}
return -1;
