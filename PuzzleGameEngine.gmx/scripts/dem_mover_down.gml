/// dem_mover_down()

var objup = noone;
var yy = argument0.y;
var idex = argument0.ide;

with(objDialogAction) {
    show_debug_message("inspecting ides.. "+string(ide))
    if (self.ide == idex+1) {
        objup = id;
        break;
    }
}

if (objup != noone) {
    argument0.ide = objup.ide;
    argument0.y = objup.y;
    objup.ide = idex;
    objup.y = yy;
    
}
