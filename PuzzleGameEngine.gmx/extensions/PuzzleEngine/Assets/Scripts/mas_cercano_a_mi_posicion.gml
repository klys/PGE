/// mas_cercano_a_mi_posicion(pos)

var toReturn = ds_list_create();
var obj = noone;
//var distancias = ds_grid_create(2,global.cuadrotamano*global.cuadrotamano)
var distancia_minima = 9999;
with(objPosicion) {
    var dis = point_distance(other.x,other.y,self.x,self.y)
    if (dis < distancia_minima) {
        distancia_minima = dis;
        obj = self.id;
    }
}

if (distancia_minima < global.mindistance) {
    ds_list_add(toReturn, true)
    ds_list_add(toReturn, obj)
    return toReturn;
}

ds_list_add(toReturn, false)
return toReturn;
