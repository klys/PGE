
// comprobar primero si hay otro objMovimientoLineal

var _obj = argument0;
var mm = 0;
with(objMovimientoLineal) {
    if (owner == _obj) {
        mm++;
    }
}
if (DEBUG) show_debug_message("mm vale :"+string(mm))

if (mm == 0) // no hay otro objMovimientoLineal del mismo obj
{
    var mov = instance_create_vc(objMovimientoLineal);
    mov.obj = _obj;
    mov.owner = _obj;
    mov.m = 1;
    if (DEBUG) {
        show_debug_message("mov.m:"+string(mov.m))
    }
} else {
    // hay otros objMovimientoLineal
    var __obj = noone;
    with(objMovimientoLineal) {
        if (mm == m) and (owner == _obj) {
            __obj = id;
            break;
        }
    }
    
    if (__obj != noone) {
        var mov = instance_create_vc(objMovimientoLineal);
        mov.obj = __obj;
        mov.owner = _obj;
        mov.m = mm+1;
        
        if (DEBUG) {
            show_debug_message("mov.m:"+string(mov.m))
        }
    } else {
        if (DEBUG) show_debug_message("__obj es noone! NPS!")
    }
    
}

