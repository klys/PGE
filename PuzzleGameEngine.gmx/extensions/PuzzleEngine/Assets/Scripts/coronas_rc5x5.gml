/// coronas_rc5x5(global.horas, global.minutos, global.tiempo)

var horas = argument0;
var minutos = argument1;
var segundos = floor(argument2/30);

if (horas == 0 and minutos <= 3) return 3;

if (horas == 0 and minutos < 5) return 2;

return 1;
