/// dem_mover_up()

var objup = noone;
var yy = argument0.y;
var idex = argument0.ide;
with(objDialogAction) {
    if (self.ide == idex-1) {
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
