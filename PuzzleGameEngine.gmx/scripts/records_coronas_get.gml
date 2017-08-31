/// records_coronas_get(global.imagen)
var img = argument0;

if (instance_exists(objRecordManager) == true) {
    with(objRecordManager) {
        var sprite_nombre = img
        for(var i = 0; i < n; i++) {
            var submap = json_decode(records[? "record-"+string(i)]);
            if (DEBUK) {
                show_debug_message("submap img: '"+submap[? "img"]+"', sprite_nombre: '"+sprite_nombre+"'")
            }
            if (submap[? "img"] == sprite_nombre) {
                var toReturn = real(submap[? "coronas"]);
                if (DEBUK) show_debug_message("coronas: "+submap[? "coronas"]);
                ds_map_destroy(submap)
                return toReturn;
            }
            ds_map_destroy(submap)
        }
    }
}
return 0;
