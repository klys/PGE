/// dem_end_dialogs()

with(argument0) {
        var yy = dem_valid_yy(y);
        var idex = dialog_ide_asignador()
        var obj = instance_create(room_width-45,yy,objDialogAction);
        obj.action = "Terminar Dialogo"
        obj.ide = idex;
        obj.doi = "end"
        obj.sprite_index = sprEndAll
}
