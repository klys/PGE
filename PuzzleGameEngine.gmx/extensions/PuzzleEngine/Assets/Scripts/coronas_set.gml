/// coronas_set(ppmap, nivel, coronas_ganadas, coronas_recibidas)
var ppmap = argument0;
var nivel = argument1;
var crowns = argument2; // coronas ganadas en total para guardarse
var crown_win = argument3; // coronas recibidas para sumarse

if (instance_exists(objCoronasManager) == false) exit;

with(objCoronasManager) {
    var submap = -1
    if (is_undefined( map[? ppmap] ) == false) submap = json_decode(map[? ppmap]);
    
    if (submap == -1) { // primera ves que gana
    
        submap = ds_map_create()
        submap[? "nivel-"+string(nivel)] = string(crowns);
        map[? ppmap] = json_encode(submap)
        //coronas_save(json_encode(map))
        ds_map_destroy(submap)
        
    } else { // ya existe info
    
        submap[? "nivel-"+string(nivel)] = string(crowns);
        map[? ppmap] = json_encode(submap)
        //coronas_save(json_encode(map))
        ds_map_destroy(submap)
        
    }
    coronas += crown_win;
    map[? "coronas"] = string(coronas);
    coronas_save(json_encode(map))
}
