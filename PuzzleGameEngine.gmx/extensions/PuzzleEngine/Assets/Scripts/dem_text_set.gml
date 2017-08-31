/// dem_text_set()

with(argument0) {
    var toIdex = get_string("A que Dialogo le cambiaremos el Texto?","");
    if (toIdex != "") {
        var yy = dem_valid_yy(y);
        var idex = dialog_ide_asignador()
        var obj = instance_create(room_width-45,yy,objDialogAction);
        obj.action = "Cambiar Texto ($"+string(toIdex)+".)"
        obj.ide = idex;
        obj.toIde = toIdex;
        obj.doi = "text"
        obj.sprite_index = sprTextSet
        return obj;
    }
}
