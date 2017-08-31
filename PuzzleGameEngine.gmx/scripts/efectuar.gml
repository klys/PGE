/// efectuar("efecto.json", instance)

var __obj = instance_create(0,0,objEfectuador);

__obj.object = argument1;
__obj.efecto = efecto_load(argument0)

with(__obj) alarm[2] = 1
