/// EleMovil_MovesMap(json)

var cmoves = json_decode(argument0);

cmoves[? "speed"] = real(cmoves[? "speed"]);
cmoves[? "time"] = real(cmoves[? "time"]);
cmoves[? "n"] = real(cmoves[? "n"]);

if (cmoves[? "n"] == 0) return cmoves;

for(var i = 1; i <= cmoves[? "n"]; i++) {
    var mov = json_decode( cmoves[? "m-"+string(i)] );
    mov[? "x"] = real(mov[? "x"]);
    mov[? "y"] = real(mov[? "y"]);
    cmoves[? "m-"+string(i)] = mov; 
}

return cmoves;
