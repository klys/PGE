var file = file_text_open_read(global.fname);

var json = file_text_read_string(file);

file_text_close(file);

// transformacion a un map usable

if DEBUG show_debug_message("::: Proceso de CARGADO comenzado :::")

var principal = json_decode(json);

principal[? "camy"] = real(principal[? "camy"]);

if (principal[? "camy"] > 0)
objCamaraPlayWin.y = principal[? "camy"];

// fondos

principal[? "f"] = real(principal[? "f"]);

var fondo = -1;

for(var i = 0; i <= principal[? "f"]; i++) {
    fondo = json_decode(principal[? "f-"+string(i)]);
    if DEBUG show_debug_message("Cargando Fondo:"+string(i)+" fname:"+fondo[? "fname"])
    fondo[? "y"] = real(fondo[? "y"]);
    if (not is_undefined(fondo[? "n"]))
    fondo[? "n"] = real(fondo[? "n"]);
    principal[? "f-"+string(i)] = fondo;
}

principal[? "b"] = real(principal[? "b"]);

// botones

var boton = -1;

for(var i = 0; i <= principal[? "b"]; i++) {
    boton = json_decode(principal[? "b-"+string(i)]);
    boton[? "x"] = real(boton[? "x"]);
    boton[? "y"] = real(boton[? "y"]);
    boton[? "n"] = real(boton[? "n"]);
    boton[? "next"] = real(boton[? "next"]);
    boton[? "colorNext"] = real(boton[? "colorNext"]);
    if (not is_undefined(boton[? "depth"]))
    boton[? "depth"] = real(boton[? "depth"]);
    principal[? "b-"+string(i)] = boton;
}

// estatico

principal[? "s"] = real(principal[? "s"]);

var static = -1;

for(var i = 0; i <= principal[? "s"]; i++) {
    static = json_decode( principal[? "s-"+string(i)] );
    static[? "x"] = real(static[? "x"]);
    static[? "y"] = real(static[? "y"]);
    static[? "n"] = real(static[? "n"]);
    static[? "duplicado"] = real(static[? "duplicado"]);
    if (not is_undefined(static[? "depth"]))
    static[? "depth"] = real(static[? "depth"]);
    principal[? "s-"+string(i)] = static;
}

// animados

principal[? "g"] = real(principal[? "g"]);

var gif = -1;

for(var i = 0; i <= principal[? "g"]; i++) {
    gif = json_decode( principal[? "g-"+string(i)] );
    gif[? "x"] = real(gif[? "x"]);
    gif[? "y"] = real(gif[? "y"]);
    gif[? "n"] = real(gif[? "n"]);
    gif[? "number"] = real(gif[? "number"]);
    gif[? "image_speed"] = real(gif[? "image_speed"]);
    gif[? "duplicado"] = real(gif[? "duplicado"]);
    if (not is_undefined(gif[? "depth"]))
    gif[? "depth"] = real(gif[? "depth"])
    principal[? "g-"+string(i)] = gif;
}

// moviles

principal[? "v"] = real(principal[? "v"]);

var vivo = -1;

for(var i = 0; i <= principal[? "v"]; i++) {
    vivo = json_decode( principal[? "v-"+string(i)] );
    vivo[? "x"] = real(vivo[? "x"]);
    vivo[? "y"] = real(vivo[? "y"]);
    vivo[? "n"] = real(vivo[? "n"]);
    vivo[? "image_speed"] = real(vivo[? "image_speed"]);
    vivo[? "duplicado"] = real(vivo[? "duplicado"]);
    if (not is_undefined(vivo[? "depth"]))
    vivo[? "depth"] = real(vivo[? "depth"])
    vivo[? "vida"] = EleMovil_MovesMap(vivo[? "vida"]);
    if (not is_undefined(vivo[? "number"]))
    vivo[? "number"] = real(vivo[? "number"]);
    principal[? "v-"+string(i)] = vivo;
}

// usando el mapa usable ya no json

// creando los fondos

var fondo = -1;

for(var i = 0; i <= principal[? "f"]; i++) {
    fondo = principal[? "f-"+string(i)];
    var _f = instance_create(0,fondo[? "y"],objElemFondo);
    //_f.fname = fondo[? "fname"];
    if (DEBUG) show_debug_message("_f.fname:"+string(fondo[? "fname"]))
    _f.image = sprite_add(fondo[? "fname"],1,0,0,0,0);
    //if (not is_undefined(fondo[? "n"]))
    //_f.n = fondo[? "n"];
}

with(objElemFondo) visible = true;

// creando botones

var boton = -1;

for(var i = 0; i <= principal[? "b"]; i++) {
    boton = principal[? "b-"+string(i)];
    var _b = instance_create(boton[? "x"], boton[? "y"], objElemBoton);
    _b.efecto = boton[? "efecto"];
    //_b.fname = boton[? "fname1"];
    _b.fname2 = boton[? "fname2"];
    if (DEBUG) show_debug_message("_b.fname:"+string(boton[? "fname1"])+", _b.fname2:"+string(_b.fname2))
    _b.image = sprite_add(boton[? "fname1"],1,0,0,0,0);
    
    _b.n = boton[? "n"]
    _b.dificultad = asset_get_index( boton[? "dificultad"] );
    _b.next = boton[? "next"];
    _b.colorNext = boton[? "colorNext"];
    //_b.offset = boton[? "offset"];
    if (not is_undefined(boton[? "depth"]))
    _b.depth = boton[? "depth"];
    else _b.depth = -1000-_b.n;
    switch(boton[? "offset"]) {
        case "center":
            sprite_set_offset(_b.image,sprite_get_width(_b.image)/2,sprite_get_height(_b.image)/2)
        break;
        case "center_bottom":
            sprite_set_offset(_b.image,sprite_get_width(_b.image)/2,sprite_get_height(_b.image))
        break;
    }
    _b.sprite_index = _b.image;
    _b.mask_index = _b.image;
}

// nextObj asignacion

with(objElemBoton) {
    nextObj = ElemBoton_n_obtener(next);
    visible = true;
    if (efecto != "") efectuar(efecto,id)
}


// creando estaticos

var static = -1;

for(var i = 0; i <= principal[? "s"]; i++) {
    static = principal[? "s-"+string(i)];
    var _s = instance_create(static[? "x"], static[? "y"], objElemEstatico);
    _s.fname = static[? "fname"];
    _s.duplicado = static[? "duplicado"];
    _s.n = static[? "n"];
    if (_s.fname != "") and (_s.duplicado < 0)
    _s.image = sprite_add(_s.fname,1,0,0,0,0);
    
    if (_s.duplicado >= 0) 
    _s.image = ElementoMap_sprite_n("static", _s.duplicado)
    
    if (_s.image == noone) and (_s.fname != "") {
        _s.duplicado = -1;
        _s.image = sprite_add(_s.fname,1,0,0,0,0);
    }
    
    _s.efecto = static[? "efecto"];
    //_s.offset = static[? "offset"];
    if (not is_undefined(static[? "depth"]))
    _s.depth = static[? "depth"];
    else _s.depth = -1000;
    switch(static[? "offset"]) {
        case "center":
            sprite_set_offset(_s.image,sprite_get_width(_s.image)/2,sprite_get_height(_s.image)/2)
        break;
        case "center_bottom":
            sprite_set_offset(_s.image,sprite_get_width(_s.image)/2,sprite_get_height(_s.image))
        break;
    }
}

// staticos duplicados

with(objElemEstatico) {
    if (duplicado >= 0) {
        image = ElementoMap_sprite_n("static", duplicado)
    }
    visible = true;
    if (efecto != "") efectuar(efecto,id)
}


// creando animados

var gif = -1;

for(var i = 0; i <= principal[? "g"]; i++) {
    gif = principal[? "g-"+string(i)];
    var _g = instance_create(gif[? "x"], gif[? "y"], objElemAnimado);
    _g.fname = gif[? "fname"];
    _g.number = gif[? "number"];
    //_g.offset = gif[? "offset"];
    _g.duplicado = gif[? "duplicado"];
    if (_g.number != -1) and (_g.duplicado < 0) 
    _g.image = sprite_add(_g.fname, gif[? "number"],0,0,0,0);
    
    if (_g.duplicado >= 0) {
        _g.image = ElementoMap_sprite_n("gif", _g.duplicado);
        if (_g.image == noone) {
            _g.image = sprite_add(_g.fname,_g.number,0,0,0,0);
            _g.duplicado = -1;
        }
    }
    
    
    switch(gif[? "offset"]) {
        case "center":
            sprite_set_offset(_g.image,sprite_get_width(_g.image)/2,sprite_get_height(_g.image)/2)
        break;
        case "center_bottom":
            sprite_set_offset(_g.image,sprite_get_width(_g.image)/2,sprite_get_height(_g.image))
        break;
    }
    _g.image_speed = gif[? "image_speed"];
    
    if (not is_undefined(gif[? "depth"]))
    _g.depth = gif[? "depth"];
    else _g.depth = -1000;
    
    _g.efecto = gif[? "efecto"];
    
}

with(objElemAnimado) {
    visible = true;
    if (efecto != "") efectuar(efecto,id)
    
}

// moviles

var vivo = -1;

for (var i = 0; i <= principal[? "v"]; i++) {
    vivo = principal[? "v-"+string(i)];
    if DEBUG show_debug_message("Cargando Movil: "+string(i))
    var _v = instance_create(vivo[? "x"], vivo[? "y"], objElemMovil);
    _v.startx = vivo[? "x"];
    //_v.x = vivo[? "x"];
    _v.starty = vivo[? "y"];
    //_v.y = vivo[? "y"];
    //if (not is_undefined(vivo[? "number"]))
    _v.number = vivo[? "number"];
    _v.fname = vivo[? "fname"];
    if DEBUG show_debug_message("_v.fname: "+_v.fname+", _v.number: "+string(_v.number))
    if (_v.fname != "") and (_v.number > 0)
    _v.image = sprite_add(_v.fname,_v.number,0,0,0,0);
    //_v.offset = vivo[? "offset"];
    _v.tipo = vivo[? "tipo"];
    _v.n = vivo[? "n"];
    _v.efecto = vivo[? "efecto"];
    _v.image_speed = vivo[? "image_speed"];
    _v.duplicado = vivo[? "duplicado"];
    if (not is_undefined(vivo[? "depth"]))
    _v.depth = vivo[? "depth"];
    else _v.depth = -1000;
    switch(vivo[? "offset"]) {
        case "center":
            sprite_set_offset(_v.image,sprite_get_width(_v.image)/2,sprite_get_height(_v.image)/2)
        break;
        case "center_bottom":
            sprite_set_offset(_v.image,sprite_get_width(_v.image)/2,sprite_get_height(_v.image))
        break;
    }
    var vida = vivo[?"vida"];
    _v.rapidez = vida[? "speed"];
    _v.tiempo = vida[? "time"];
    _v.comportamiento = vida[? "behaviur"];
    _v.moves = vivo[? "vida"];
    /*
    for(var j = 1; j <= vida[?"n"]; j++) {
        var mov = vida[? "m-"+string(j)];
        //if (_v.startx == mov[? "x"]) and (_v.starty == mov[? "y"]) break;
        var _m = instance_create(mov[? "x"], mov[? "y"], objMovimientoLineal);
        _m.m = j;
        _m.owner = _v;
        _m.obj = Moves_n_propios(_v, _m.m-1);
    }
    */
    
} // for

with(objElemMovil) {
    m = 0;
    if (moves[? "n"] != 0) alarm[1] = moves[? "time"];
}

if DEBUG show_debug_message("::: Proceso de CARGADO finalizado :::")
