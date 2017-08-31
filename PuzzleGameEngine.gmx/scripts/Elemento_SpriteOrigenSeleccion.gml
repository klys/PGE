
var _obj = argument0;

var opciones = ds_map_create();

opciones[? "obj"] = _obj;
opciones[? "var"] = "offset"
opciones[? "scr"] = Elemento_SpriteOrigenSeleccion_Callback

var opt = ds_map_create();
opt[? "label"] = "Origen en el centro de la imagen."
opt[? "boton"] = "Centro"
opt[? "val"] = "center"
opciones[? "opt-0"] = opt;

var opt = ds_map_create();
opt[? "label"] = "Origen en el punto cero cero (0,0)."
opt[? "boton"] = "Cero"
opt[? "val"] = "zero"
opciones[? "opt-1"] = opt;

var opt = ds_map_create();
opt[? "label"] = "Origen centrado desde el piso de la imagen."
opt[? "boton"] = "Piso"
opt[? "val"] = "center_bottom"
opciones[? "opt-2"] = opt;
 
opciones[? "n"] = 3;

selector("offset:"+_obj.offset, opciones)
