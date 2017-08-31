/// coronas_sp4x4(global.horas, global.minutos, global.tiempo)

var horas = argument0;
var minutos = argument1;
var segundos = argument2;

if (horas == 0 and minutos < 5) return 3;

if (horas == 0 and minutos < 10) return 2;

return 1;
