/// coronas_sp5x5(global.horas, global.minutos, global.tiempo)

var horas = argument0;
var minutos = argument1;
var segundos = argument2;

if (horas == 0 and minutos <= 20) return 3;

if (horas == 0 and minutos < 30) return 2;

return 1;
