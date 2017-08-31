/// coronas_dar(coronas_juego)
/*
    Script para decidir cuantas coronas sumar
    y cual efecto lanzar
*/

var coronas_now = argument0; // coronas ganadas en total en la partida (no para sumarse)

var coronas_old = coronas_cuantas(global.filemap, global.nivel); // coronas obtenidas con anterioridad

var coronas_this = 0; // coronas para sumarse

if (coronas_old < 0) {// si no se ha obtenido coronas en este nivel

    coronas_set(global.filemap,global.nivel,coronas_now, coronas_now)
    
} else { // si ya se han obtenido coronas

    coronas_this = coronas_now - coronas_old;
    coronas_set(global.filemap, global.nivel, coronas_now, coronas_this) 
    
}

switch(coronas_now) {
    case 1: instance_create(view_wview[0]/2,view_hview[0]/2,objCoronaBronze) break;
    case 2: instance_create(view_wview[0]/2,view_hview[0]/2,objCoronaSilver) break;
    case 3: instance_create(view_wview[0]/2,view_hview[0]/2,objCoronaGold) break;
}
