/// dem_text_setx()

with(argument0) {
    var toIdex = argument1;
    if (toIdex != "") {
        var yy = dem_valid_yy(y);
        var idex = dialog_ide_asignador()
        var obj = instance_create(room_width-45,yy,objDialogAction);
        obj.action = "Cambiar Texto ($"+string(toIdex)+".)"
        obj.ide = real(idex);
        obj.toIde = toIdex;
        obj.doi = "text"
        obj.sprite_index = sprTextSet
        return obj;
    }
}
