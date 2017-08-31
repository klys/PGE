/// dem_crear_izq_up()
/*
    Dialog Editor Menu
    Crear Dialogo con Personaje a la Izquierda
    
*/

var ide = argument0;

with(ide) {
    var yy = y;
    var col = collision_point(room_width-40,yy,objDialogAction,false,false);
    var idex = dialog_ide_asignador()
    while(col != noone ) {
        col = collision_point(room_width-40,yy,objDialogAction,false,false);
        yy += 15
    }
    var obj = instance_create(room_width-45,yy,objDialogAction);   
    obj.ide = idex;
    obj.action = "Dialogo a la Izquierda/Arriba"
    obj.sprite_index = sprDialogIzqUp;
    obj.doi = "dialog"
    return obj;
}
