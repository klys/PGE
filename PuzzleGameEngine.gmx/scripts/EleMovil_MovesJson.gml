/// EleMovil_MovesJson(id)

var _obj = argument0;

with(_obj) {
    var cmoves = moves;
    
    cmoves[? "speed"] = string(cmoves[? "speed"]);
    cmoves[? "time"] = string(cmoves[? "time"]);
    
    if (cmoves[? "n"] == 0) {
        cmoves[? "n"] = string(0);
        return json_encode(cmoves);
    }
    
    for(var i = 1; i <= cmoves[? "n"]; i++) {
        var mov = cmoves[? "m-"+string(i)];
        mov[? "x"] = string(mov[? "x"]);
        mov[? "y"] = string(mov[? "y"]);
        cmoves[? "m-"+string(i)] = json_encode(mov);
    }
    
    cmoves[? "n"] = string(cmoves[? "n"]);
    
    var __json = json_encode(cmoves);
    
    if DEBUG show_debug_message("json(eleMovil->moves): "+string(__json))
    
    return __json;
    
    
}
