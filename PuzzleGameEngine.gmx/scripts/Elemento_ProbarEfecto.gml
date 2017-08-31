
var _obj = argument0;

if _obj.image == noone {
    alert("Y la imagen?!","No hay imagen donde aplicar efecto!")
    exit;
}

if _obj.efecto == "" {
    alert("No hay nada!", "Efecto aun no seleccionado.")
    exit;
}
global.efetuar = _obj;
wquestion("¿Probar efecto "+_obj.efecto+"?",Elemento_ProbarEfecto_Callback)
