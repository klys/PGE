
var _obj = argument0;

var opciones = ds_map_create();

opciones[? "var"] = "comportamiento";
opciones[? "obj"] = _obj;
opciones[? "scr"] = noone;

var opt = ds_map_create();
opt[? "label"] = "Cambiar DIRECCION.";
opt[? "boton"] = "Direccional";
opt[? "val"] = "direccional";
opciones[? "opt-0"] = opt;

var opt = ds_map_create();
opt[? "label"] = "VOLTEAR hacia direccion.";
opt[? "boton"] = "Volteador";
opt[? "val"] = "volteador";
opciones[? "opt-1"] = opt;

var opt = ds_map_create();
opt[? "label"] = "No hacer ningun cambio.";
opt[? "boton"] = "Estatico";
opt[? "val"] = "estatico";
opciones[? "opt-2"] = opt;

opciones[? "n"] = 3;

selector("Actual: "+_obj.comportamiento, opciones);



