
var obj = argument0;

var yy = obj.y;
var nn = obj.n;

var yobj = noone;

with(objEleFondo) {
    if (obj.n == n-1) {
        yobj = id;
        break;        
    }
} 

if (yobj != noone) {
    obj.y = yobj.y;
    obj.n = yobj.n;
    yobj.y = yy;
    yobj.n = nn;
}

var fondo = noone;
var fondoPrev = yobj;
for(var i = yobj.n; i < EleFondo_cuantos(); i++) {
    fondo = EleFondo_obtener(i);
    if (fondo != noone) {
        fondo.y = fondoPrev.y + fondoPrev.h;
        fondoPrev = fondo;
    }
}


