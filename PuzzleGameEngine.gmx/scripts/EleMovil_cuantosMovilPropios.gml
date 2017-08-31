
var __obj = argument0;
var mmm = 0;

with(objMovimientoLineal) {
    if (owner == __obj) {
        mmm++;        
    }
}

if (DEBUG) {
    show_debug_message("mmm:"+string(mmm))
}

return mmm;
