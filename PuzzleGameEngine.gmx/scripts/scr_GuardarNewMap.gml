
var fname_map = get_save_filename_ext("New Map Engine File|*.nmap","","","GUARDAR Mapa");

if (fname_map == "") {
    alert("Cancelado!", "Se cancelo el guardado!")
    exit;
}



if DEBUG show_debug_message(":::Proceso de Guardado INICIADO::::")

var principal = ds_map_create();

/// CAMARA

if (instance_exists(objCamaraAqui)) {
    principal[? "camy"] = string(objCamaraAqui.y); 
} else {
    principal[? "camy"] = "0";
}

// FONDOS

var fondo = -1;
var f = -1;
with(objEleFondo) {
    f++;
    fondo = ds_map_create();
    fondo[? "y"] = string(y);
    fondo[? "fname"] = fname;
    fondo[? "n"] = string(n);
    principal[? "f-"+string(f)] = json_encode( fondo );
    if DEBUG show_debug_message("Guardando Fondo: "+string(f)+ " fname:"+fondo[? "fname"])
}
principal[? "f"] = string(f);

if DEBUG show_debug_message("Fondos guardados: "+string(f+1))

// BOTONES

var boton = -1;
var b = -1
with(objEleBoton) {
    b++;
    boton = ds_map_create();
    boton[? "x"] = string(x);
    boton[? "y"] = string(y);
    boton[? "efecto"] = efecto;
    boton[? "fname1"] = fname;
    boton[? "fname2"] = fname2;
    boton[? "n"] = string(n);
    boton[? "dificultad"] = dificultad;
    boton[? "next"] = string(next);
    boton[? "colorNext"] = string(colorNext);
    boton[? "offset"] = offset;
    boton[? "depth"] = string(depth);
    principal[? "b-"+string(b)] = json_encode(boton);
}

principal[? "b"] = string(b);

// estaticos

var static = -1;
var s = -1;

with(objEleEstatico) {
    s++;
    static = ds_map_create();
    static[? "x"] = string(x);
    static[? "y"] = string(y);
    static[? "fname"] = fname;
    static[? "duplicado"] = string(duplicado);
    static[? "n"] = string(n);
    static[? "efecto"] = efecto;
    static[? "offset"] = offset;
    static[? "depth"] = string(depth);
    principal[? "s-"+string(s)] = json_encode( static );
}

principal[? "s"] = string(s);

// animados

var gif = -1;
var g = -1;

with(objEleAnimado) {
    if object_get_name(object_index) == "objEleMovil" continue;
    g++;
    gif = ds_map_create();
    gif[? "x"] = string(x);
    gif[? "y"] = string(y);
    gif[? "fname"] = fname;
    gif[? "n"] = string(n);
    gif[? "number"] = string(number);
    gif[? "efecto"] = efecto;
    gif[? "offset"] = offset;
    gif[? "image_speed"] = string(image_speed);
    gif[? "duplicado"] = string(duplicado);
    gif[? "depth"] = string(depth);
    principal[? "g-"+string(g)] = json_encode(gif);
}

principal[? "g"] = string(g);

// moviles

var vivo = -1;
var v = -1;

with(objEleMovil) {
    v++;
    vivo = ds_map_create();
    vivo[? "x"] = string(startx);
    vivo[? "y"] = string(starty);
    vivo[? "fname"] = fname;
    vivo[? "offset"] = offset;
    vivo[? "tipo"] = tipo;  
    vivo[? "number"] = string(number);
    vivo[? "n"] = string(n);
    vivo[? "efecto"] = efecto;
    vivo[? "image_speed"] = string(image_speed);
    vivo[? "duplicado"] = string(duplicado);
    vivo[? "depth"] = string(depth);
    EleMovil_PrepararMoves(id)
    vivo[? "vida"] = EleMovil_MovesJson(id);
    principal[? "v-"+string(v)] = json_encode(vivo); 
    
}

principal[? "v"] = string(v);

var json = json_encode(principal);

var file = file_text_open_write(fname_map);

file_text_write_string(file, json);

file_text_close(file);

if (file_exists(fname_map)) {
    alert("Guardado success!", "Si, se success el guardado! :D PD: Te amo mi vi bella <3")
    global.fname = fname_map;
}

if DEBUG show_debug_message("::: Proceso de Guardado FINALIZADO :::")
