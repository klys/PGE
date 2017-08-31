/// cercano_a_mi_posicion (pos)

var obj = noone;
with(objPosicion) {
    if (pos == argument0) {
        show_debug_message("object with pos "+pos+" founded!")
        obj = id;
    }
}

if (obj == noone) return false;

var distance = distance_to_point(obj.x, obj.y);

show_debug_message("min distance: "+ string(distance))

if (distance < global.mindistance) {
    return true;
}

return false;
