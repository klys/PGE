/// dem_script_exe()

with(argument0) {
    var scr = get_string("Script a Ejecutar","");
    if (scr == "") { 
        show_message("Debe ingresar un Script")
        exit;
        }
    if (asset_get_index(scr) == -1) {
        show_message ("Script invalido.")
          exit;
          }
    if (asset_get_type(scr) != asset_script){
        show_message ("Valor ingresado no es un Script.")
          exit;
          }
    
    var yy = y;
    var col = collision_point(room_width-40,yy,objDialogAction,false,false);
    var idex = dialog_ide_asignador()
    while(col != noone ) {
        col = collision_point(room_width-40,yy,objDialogAction,false,false);
        yy += 15
    }
    var obj = instance_create(room_width-45,yy,objDialogAction);   
    obj.ide = idex;
    obj.action = "Ejecutar un script '"+scr+"'"
    obj.sprite_index = sprCode;
    obj.script = scr;
    obj.doi = "scr-x"
}
