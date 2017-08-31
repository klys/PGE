if (argument0 > 45) and (argument0 < 180-45) {
    return "arriba";
} else if (argument0 <= 45) or (argument0 > 360 - 45) {
    return "derecha";
} else if (argument0 < 360 - 45) and (argument0 > 270 -45) {
    return "abajo";
} else return "izquierda";
