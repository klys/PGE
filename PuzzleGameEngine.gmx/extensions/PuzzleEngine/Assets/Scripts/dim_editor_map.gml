/// dim_editor_map()

/*
    Dialog Implementador Menu
    
    Este script genera el mapa de todo lo que se esta editando
*/

var accionesx = ds_map_create()

with(objDialogAction) {

    var accion = ds_map_create();
    accion[? "texts"] = texts;
    accion[? "pos"] = dpm_spr_to_pos(sprite_index)
    accion[? "y"] = string(yy);
    accion[? "do"] = doi;
    accion[? "ide"] = string(ide);
    if (doi == "text") or (doi == "d-wait") or (doi == "dialog-quit") accion[? "toIde"] = string(toIde);
    if(doi == "scr-x") accion[? "script"] = asset_get_index(script)
    accionesx[? "dialog-"+string(ide)] = accion; 
    
 
}

return accionesx;

