/// coronas_rc3x3(global.horas, global.minutos, global.tiempo)

var horas = argument0;
var minutos = argument1;
var segundos = floor(argument2/30);

if (horas == 0 and minutos < 1) return 3; // gold

if (horas == 0 and minutos < 2) return 2; // silver

return 1; // bronze


