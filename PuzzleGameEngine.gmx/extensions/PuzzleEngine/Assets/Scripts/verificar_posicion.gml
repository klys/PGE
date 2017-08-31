/// verificar_posicion

with(objMemoriaBloque) {
    var col = collision_point(x,y,objSlidingPuzzlePosition,false,true);
    if (col == noone) return false;
    if (not variable_instance_exists(col, "pos")) return false; 
    if (col.pos != posicion) return false;    
}

return true;
