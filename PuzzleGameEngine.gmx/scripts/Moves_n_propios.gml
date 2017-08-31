/// Moves_n_propios(id, n) 

var ___obj = argument0;
var __n = argument1;

if (__n == 0) return ___obj;

with(objMovimientoLineal) {
    if (___obj == owner) and (__n == m) {
        return id;
    }
}

return noone;
