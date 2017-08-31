
var obj = argument0;

var yy = obj.y;
var nn = obj.n;

var yobj = noone;

with(objEleFondo) {
    if (obj.n == n+1) {
        yobj = id;
        break;        
    }
} 

if (yobj == noone) exit;
/*
    obj = obj que pide ser movido
    yobj = obj que debe ser cambiado de lugar
*/
    obj.y = yobj.y;
    obj.n = yobj.n;
    yobj.y = obj.y + obj.h;
    yobj.n = nn;


var fondo = noone;
var fondoPrev = yobj;
for(var i = nn+1; i < EleFondo_cuantos(); i++) {
    fondo = EleFondo_obtener(i);
    if (fondo != noone) {
        fondo.y = fondoPrev.y + fondoPrev.h;
        fondoPrev = fondo;
    }
}


