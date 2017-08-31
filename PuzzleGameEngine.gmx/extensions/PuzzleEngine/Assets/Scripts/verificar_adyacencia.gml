/// verificar_adyacencia(bloque central, direccion, tamano)
var tamano = argument2;
var centro = argument0;
if (not instance_exists(centro)) return true;

switch(argument1) {
    case "arriba":
        if not variable_instance_exists(centro,"arriba_o") return true;
        var obj = centro.arriba_o;
        if (obj == noone) return true;
        if (instance_exists(obj) == false) return true;
        if (point_distance(centro.x,centro.y,obj.x,obj.y) == tamano) {
            return true;
        }
    /*
        var col = collision_point(x+(tamano/2),y-(tamano/2),objMemoriaBloque,false,true); 
        if (col != noone) {
            if (centro.arriba == col.sprite_index) {
                return true;
            }
        } else {
            if (centro.arriba == 0) return true;
        }
        */
    break;
    case "derecha":
        if not variable_instance_exists(centro,"derecha_o") return true;
        var obj = centro.derecha_o;
        if (obj == noone) return true;
        if (instance_exists(obj) == false) return true;
        if (point_distance(centro.x,centro.y,obj.x,obj.y) == tamano) {
            return true;
        }
    /*
        var col = collision_point(x+(tamano/2)+tamano,y+(tamano/2),objMemoriaBloque,false,true); 
        if (col != noone) {
            if (centro.derecha == col.sprite_index) {
                return true;
            }
        }else {
            if (centro.derecha == 0) return true;
        }
        */
    break;
    case "izquierda":
        if not variable_instance_exists(centro,"izquierda_o") return true;
        var obj = centro.izquierda_o;
        if (obj == noone) return true;
        if (instance_exists(obj) == false) return true;
        if (point_distance(centro.x,centro.y,obj.x,obj.y) == tamano) {
            return true;
        }
    /*
        var col = collision_point(x-(tamano/2),y+(tamano/2),objMemoriaBloque,false,true); 
        if (col != noone) {
            if (centro.izquierda == col.sprite_index) {
                return true;
            }
        }else {
            if (centro.izquierda == 0) return true;
        }
        */
    break;
    case "abajo":
        if not variable_instance_exists(centro,"abajo_o") return true;
        var obj = centro.abajo_o;
        if (obj == noone) return true;
        if (instance_exists(obj) == false) return true;
        if (point_distance(centro.x,centro.y,obj.x,obj.y) == tamano) {
            return true;
        }
    /*
        var col = collision_point(x+(tamano/2),y+tamano+(tamano/2),objMemoriaBloque,false,true); 
        if (col != noone) {
            if (centro.abajo == col.sprite_index) {
                return true;
            }
        }else {
            if (centro.abajo == 0) return true;
        }
        */
    break;
}

return false;
