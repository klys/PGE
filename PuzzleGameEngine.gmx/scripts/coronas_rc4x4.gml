/// coronas_rc4x4(global.horas, global.minutos, global.tiempo)

var horas = argument0;
var minutos = argument1;
var segundos = floor(argument2/30);

if (horas == 0 and minutos < 2) return 3;

if (horas == 0 and minutos < 3) return 2;

return 1;
