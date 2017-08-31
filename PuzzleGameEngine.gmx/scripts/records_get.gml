/// records_get(records, global.imagen)
var imagen = argument1;
var grid = argument0;
if (grid == -1) return ""; 
if (ds_map_empty(grid)) return "";
if (grid[? "n"] == 0) return "";

var toReturn = "";
var n = real(grid[? "n"]);
for(var i = 0; i < n; i++) {
    var intentos = json_decode(grid[? "record-"+string(i)]);
    if (intentos[? "img"] == imagen) {
        if (intentos[? "hora"] == "0" and intentos[? "minuto"] == "0") { // no hay horas ni minutos (segundos)
            toReturn = string(floor(real(intentos[?"segundo"])/30)) + "s/"+intentos[? "intentos"]+"("+string(intentos[? "coronas"])+"/3)";
        } else if (intentos[? "minuto"] != "0") { // no hay horas (minutos y segundos)
            toReturn = intentos[? "minuto"] + "m"+string(floor(real(intentos[?"segundo"])/30))+"s/"+intentos[? "intentos"]+"("+string(intentos[? "coronas"])+"/3)";
        } else {
            toReturn = intentos[? "hora"]+":"+intentos[? "minuto"]+":"+string(floor(real(intentos[?"segundo"])/30))+"/"+intentos[? "intentos"]+"("+string(intentos[? "coronas"])+"/3)";
        }
        ds_map_destroy(intentos)
        return toReturn;
    }
     ds_map_destroy(intentos)
}


return toReturn;
