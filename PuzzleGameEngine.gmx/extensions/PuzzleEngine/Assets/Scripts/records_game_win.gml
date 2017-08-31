/// records_game_win(global.imagen, global.intentos, global.horas, global.minutos, global.tiempo, coronas_now)
var imagen = argument0;
var intentos = argument1;
var horas = argument2;
var minutos = argument3;
var segundos = argument4;
var coronas = argument5;


if (instance_exists(objRecordManager) == false) exit;

with(objRecordManager) {

for(var i = 0; i < n; i++) {
    var intento = json_decode(records[? "record-"+string(i)]);
    if (intento == -1) continue;
    if (intento[? "img"] == imagen) {
        var trys = real(intento[? "intentos"]);
        if (horas <= real(intento[? "hora"]) and minutos <= real(intento[? "minuto"]) and segundos < real(intento[? "segundo"])) {
            intento[? "intentos"] = string(intentos);
            intento[? "hora"] = string(horas);
            intento[? "minuto"] = string(minutos);
            intento[? "segundo"] = string(segundos); 
            intento[? "coronas"] = string(coronas) 
            records[? "record-"+string(i)] = json_encode(intento)
            var json = json_encode(records)
            records_save(json);
            exit;
        }
    }
    ds_map_destroy(intento)
}

var nuevo = ds_map_create();
nuevo[? "intentos"] = string(intentos);
nuevo[? "hora"] = string(horas);
nuevo[? "minuto"] = string(minutos);
nuevo[? "segundo"] = string(segundos);
nuevo[? "coronas"] = string(coronas)
nuevo[? "img"] = imagen;

records[? "record-"+string(n)] = json_encode(nuevo);
n++;
records[? "n"] = string(n);
ds_map_destroy(nuevo)
records_save(json_encode(records))

}
