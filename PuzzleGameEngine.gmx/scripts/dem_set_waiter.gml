/// dem_set_waiter()

//var toIdex = get_string("Cual dialogo debera esperar?","")

with(argument0) {
    var yy = dem_valid_yy(y);
    var idex = dialog_ide_asignador()
    var obj = instance_create(room_width-45,yy,objDialogAction);
    obj.action = "Esperar a que los dialogos terminen"
    obj.ide = idex;
    obj.sprite_index = sprRelojIcon;
    obj.doi = "wait"
    
}
