

var obj = argument0;

// cargar game_rooms

var fname = "data\game_rooms1.JSON";

var file = file_text_open_read(fname);

var cadena = file_text_read_string(file);

if DEBUG show_debug_message("json:"+string(cadena))

var json = json_decode(cadena);

if (json == -1) {
    show_debug_message("JSON TRANSFORM FAILURE.")
}

file_text_close(file)

// preparar opciones

var mm = real(json[? "n"]);

if DEBUG show_debug_message("mm:"+string(mm))

var opciones = ds_map_create();
    opciones[? "obj"] = obj;
    opciones[? "var"] = "dificultad";
    opciones[? "scr"] = noone;
    
for(var i = 0; i < mm; i++) {
    if DEBUG show_debug_message("opt-"+string(i)+":"+json[? "opt-"+string(i)])
    var jel = json_decode(json[? "opt-"+string(i)]);
    var opt = ds_map_create();
    opt[? "label"] = jel[? "room"];
    if (DEBUG) show_debug_message("room: "+jel[? "room"]);
    opt[? "boton"] = jel[? "info"];
    if (DEBUG) show_debug_message("info: "+jel[? "info"]);
    opt[? "val"] = jel[? "room"];
    opciones[? "opt-"+string(i)] = opt;
}

opciones[? "n"] = json[? "n"];
/*

var opciones = ds_map_create();
    opciones[? "obj"] = obj;
    opciones[? "var"] = "dificultad";
    opciones[? "scr"] = noone;
    var opt = ds_map_create();
    opt[? "label"] = "ROMPECABEZA [3x3] Tutorial"
    opt[? "boton"] = "Dificultad [0/10]"
    opt[? "val"] = rompecabezas96_3x3_Tutorial1;
    opciones[? "opt-0"] = opt;
    var opt = ds_map_create();
    opt[? "label"] = "ROMPECABEZA [3x3] SuperEasy"
    opt[? "boton"] = "Dificultad [1/10]"
    opt[? "val"] = rompecabezas96_3x3_SuperEasy;
    opciones[? "opt-1"] = opt;
    var opt = ds_map_create();
    opt[? "label"] = "ROMPECABEZA [3x3] Moderate"
    opt[? "boton"] = "Dificultad [2/10] "
    opt[? "val"] = rompecabezas96_3x3_Moderate;
    opciones[? "opt-2"] = opt;
    var opt = ds_map_create();
    opt[? "label"] = "ROMPECABEZA [3x3] Normal"
    opt[? "boton"] = "Dificultad [3/10]"
    opt[? "val"] = rompecabezas96_3x3;
    opciones[? "opt-3"] = opt;
    opciones[? "n"] = 4;
*/
selector("[Dificultad: "+string(obj.dificultad)+"]",opciones)
