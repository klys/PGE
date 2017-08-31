/// selector(titulo, opciones map)

/*
    opciones map estructura:
    
    // map principal es OPCIONES
    
    opciones = ds_map_create();
    
    opciones[? "scr"] = SCRIPT_CALLBACK
    opciones[? "obj"] = OBJECT
    opciones[? "var"] = "VARIABLE_NAME"
    opciones[? "n"] = Cantidad de opt-#
        
    // script de opciones
    
    opciones[? "scr"] = scr_tu_script;
    
    ¿como funciona el callback script?
    
    >> argument0 es el valor de la SELECCION (VAL),
    si presionan CANCELAR sera UNDEFINED 
    (usar is_undefined() para verificar)
    
    >> argument1 es el valor del OBJ
    
    >> argument2 es el valor de VAR
    usa variable_instance_set si lo crees necesario.
    
    // OBJETO a modificar variable
    
    opciones[? "obj"] = instance_id or object_id (NO OBJECT NAME);
    
    // VARIABLE a modificar en OBJECT
    
    opciones[? "var"] = "variable_name"; (NOMBRE DE VARIABLE EN CADENA DE CARACTERES)
    
    ejemplo:
    OBJ: objPersonaje4
    VAR: balas
    
    opciones[? "obj"] = objPersonaje4;
    opciones[? "var"] = "balas";
    
    // map de elementos OPT
    
    var opt = ds_map_create();
    
    // LABEL dentro de OPT es texto complementario
    
    opt[? "label"] = "Explicacion 0"
    
    // BOTON dentro de OPT es el texto del BOTON
    
    opt[? "boton"] = "Seleccion 0"
    
    // BTNCLR ignoralo. No afectara.
    
    opt[? "btnclr"] = c_blue; // ignorable, ¿porque lo pongo? por mi :P
    
    // VAL es el valor del boton, puede ser STR, NUMB o SCRIPT
    
    opt[? "val"] = 0
    
    // se debe guardar OPT dentro de el mapa principal con nomeclatura opt-#
    y actualizar n dentro del mapa principal
    el numero debe comenzar desde 0 y si solo es una sola opcion n es 1
    
    opciones[? "opt-0"] = opt;
    
    // n en el mapa principal representa la cantidad de opcione
    y puede ser especificado al final.
    
    opciones[? "n"] = 1;
    
    // ejemplo completo funcional:
    
    var opciones = ds_map_create();
    opciones[? "obj"] = objInventario;
    opciones[? "var"] = "itemNuevo";
    opciones[? "scr"] = scr_inventario_comprarItem;
    var opt = ds_map_create();
    opt[? "label"] = "Pistola Lazer Nv 50"
    opt[? "boton"] = "1500 G"
    opt[? "val"] = 1;
    opciones[? "opt-0"] = opt;
    var opt = ds_map_create();
    opt[? "label"] = "Armadura Goliat Nv 55"
    opt[? "boton"] = "8000 G"
    opt[? "val"] = 2;
    opciones[? "opt-1"] = opt;
    var opt = ds_map_create();
    opt[? "label"] = "Zapatos Voladores Nv 45"
    opt[? "boton"] = "12.000 G"
    opt[? "val"] = 3;
    opciones[? "opt-2"] = opt;
    var opt = ds_map_create();
    opt[? "label"] = "Espada Pistola de Goro Nv 80"
    opt[? "boton"] = "25.000 G"
    opt[? "val"] = 4;
    opciones[? "opt-3"] = opt;
    opciones[? "n"] = 4;
    
    selector("Tienda de Cositas", opciones);
*/

var selobj = instance_create(0,0,objSelectorGUI);

var map = argument1;

map[? "n"] = real(map[? "n"]);

for(var i = 0; i < map[? "n"]; i++) {
    var submap = map[? "opt-"+string(i)];
    //submap[? "btnclr"] = 0;
    submap[? "btnclr"] = c_blue;
    map[? "opt-"+string(i)] = submap;
}

selobj.opciones = map;
selobj.caption = argument0;
selobj.obj = map[? "obj"];
selobj.variable = map[? "var"];
selobj.script = map[? "scr"]




