/// dim_json_to_map(JSON)
var json = argument0;
var dialog = json_decode(json);
for(var i = 1; i <= real(dialog[? "n"]); i++) {
    var accion = json_decode(dialog[? "dialog-"+string(i)])
    
    var tmp = json_decode(accion[? "texts"]);
    accion[? "texts"] = dim_map_to_list(tmp);
    dialog[? "dialog-"+string(i)] = accion;
}

return dialog;
