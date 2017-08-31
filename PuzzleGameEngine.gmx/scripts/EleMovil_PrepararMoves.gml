/// EleMovil_PrepararMoves(obj)

var _obj = argument0;
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
    //alarm[1] = moves[? "time"];

}
