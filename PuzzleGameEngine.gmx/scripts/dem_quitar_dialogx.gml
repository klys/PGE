/// dem_quitar_dialogx()

var toIdex = argument1;

with(argument0) {
    var yy = y;
    var col = collision_point(room_width-40,yy,objDialogAction,false,false);
    var idex = dialog_ide_asignador()
    while(col != noone ) {
        col = collision_point(room_width-40,yy,objDialogAction,false,false);
        yy += 15
    }
    var obj = instance_create(room_width-45,yy,objDialogAction);   
    obj.ide = idex;
    obj.action = "Quitar Dialogo ($"+string(toIdex)+".)"
    obj.toIde = toIdex;
    obj.doi = "dialog-quit"
    obj.sprite_index = sprQuitarDialogo
}
