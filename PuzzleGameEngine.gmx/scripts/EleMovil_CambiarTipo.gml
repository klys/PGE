
var _obj = argument0;

var opciones = ds_map_create();

opciones[? "scr"] = noone;
opciones[? "obj"] = _obj;
opciones[? "var"] = "tipo"


var opt = ds_map_create();
opt[? "label"] = "Repetir movimientos.";
opt[? "boton"] = "Repetir"
opt[? "val"] = "repetir"
opciones[? "opt-0"] = opt;

var opt = ds_map_create();
opt[? "label"] = "Movimientos en Circuito.";
opt[? "boton"] = "Circuito"
opt[? "val"] = "circuito"
opciones[? "opt-1"] = opt;

var opt = ds_map_create();
opt[? "label"] = "Ir y Volver por el mismo camino.";
opt[? "boton"] = "Ruta"
opt[? "val"] = "devolver"
opciones[? "opt-2"] = opt;

var opt = ds_map_create();
opt[? "label"] = "Mover y luego detenerse.";
opt[? "boton"] = "Una Vez"
opt[? "val"] = "unasolavez"
opciones[? "opt-3"] = opt;

opciones[? "n"] = 4;
selector("Tipo: "+string(_obj.tipo), opciones)

