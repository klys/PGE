/// dem_dialog_waitx()

var toIdex = argument1

if (toIdex == "") exit;

with(argument0) {
    var yy = dem_valid_yy(y);
    var idex = dialog_ide_asignador()
    var obj = instance_create(room_width-45,yy,objDialogAction);
    obj.action = "Un Dialogo Esperara ($"+string(toIdex)+".)"
    obj.ide = idex;
    obj.toIde = toIdex;
    obj.sprite_index = sprDialogWait;
    obj.doi = "d-wait"
    
}


