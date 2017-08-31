
var _obj = argument0;

var opciones = ds_map_create();

opciones[? "obj"] = _obj;
opciones[? "var"] = "efecto";
opciones[? "scr"] = noone;

var opt = ds_map_create();
opt[? "label"] = "Efecto de espasmo."
opt[? "boton"] = "Espasmo"
opt[? "val"] = "shuffle.json"
opciones[? "opt-0"] = opt;

var opt = ds_map_create();
opt[? "label"] = "Efecto de Saludo."
opt[? "boton"] = "Saludo"
opt[? "val"] = "burula.json"
opciones[? "opt-1"] = opt;

opciones[? "n"] = 2;

selector("Efecto:"+string(_obj.efecto),opciones )
