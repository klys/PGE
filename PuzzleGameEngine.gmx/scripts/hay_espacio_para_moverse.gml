var tamano = argument1;
switch(argument0) {
    case "arriba":
        //punto_de_collision_debug(x+32,y-32)
        if (collision_point(x+(tamano/2),y-(tamano/2),objMemoriaObstaculo,true,true) == noone) {
            return true;
        }
    break;
    case "abajo":
        //punto_de_collision_debug(x+32,y+64)
        if (collision_point(x+(tamano/2),y+tamano+(tamano/2),objMemoriaObstaculo,true,true) == noone) {
            return true;
        }
    break;
    case "derecha":
        //punto_de_collision_debug(x+64,y+32)
        if (collision_point(x+tamano+(tamano/2),y+(tamano/2),objMemoriaObstaculo,true,true) == noone) {
            return true;
        }
    break;
    case "izquierda":
        //punto_de_collision_debug(x-64,y+32)
        if (collision_point(x-(tamano/2),y+(tamano/2),objMemoriaObstaculo,true,true) == noone) {
            return true;
        }
    break;
}

return false;
