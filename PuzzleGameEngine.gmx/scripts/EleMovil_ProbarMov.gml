var __obj = argument0;

EleMovil_PrepararMoves(__obj)

with(__obj) {
    m = 0;
    if (moves[? "n"] != 0) alarm[1] = moves[? "time"];
    else alert("Sin movimientos!", "No hay movimientos diposnibles para probar; usa MOVER para crear algunos.")
}
/*
with(_obj) {
    ds_map_destroy(moves)
    moves = ds_map_create();
    moves[? "behaviur"] = comportamiento;
    moves[? "tipo"] = tipo;
    moves[? "speed"] = rapidez;
    moves[? "time"] = tiempo;
    
    var mtotal = EleMovil_cuantosMovilPropios(_obj);
for(var i = 1; i <= mtotal; i++) {
    var mov = ds_map_create();
    with(objMovimientoLineal) {
        if (owner == _obj) and (i == m) {
            mov[? "x"] = x;
            mov[? "y"] = y;
        }
    }
    moves[? "m-"+string(i)] = mov;
}
    moves[? "n"] = mtotal;
    
    m = 0;
    alarm[1] = moves[? "time"];

}
*/
