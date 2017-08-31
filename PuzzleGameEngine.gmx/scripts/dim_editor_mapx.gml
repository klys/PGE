/// dim_editor_mapx()

/*
    Dialog Implementador Menu
    
    Este script genera el mapa de todo lo que se esta editando
*/

var accionesx = ds_map_create()

var nn = 0;

with(objDialogAction) {
    var accion = ds_map_create();
    accion[? "texts"] = json_encode(dim_list_to_map(texts))//texts;
    if (doi = "dialog") {
        accion[? "pos"] = dpm_spr_to_pos(sprite_index)
        accion[? "y"] = string(yy);
    }
    accion[? "do"] = doi;
    accion[? "ide"] = string(ide);
    if (doi == "text") or (doi == "d-wait") or (doi == "dialog-quit") accion[? "toIde"] = string(toIde);
    if (doi == "scr-x") accion[? "script"] = script;
    accionesx[? "dialog-"+string(ide)] = json_encode(accion); 
    nn++;
 
}

accionesx[? "n"] = string(nn);

return accionesx;

