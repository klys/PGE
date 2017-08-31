
var obj = argument0;

var str = "x:"+string(obj.x)+", y:"+string(obj.y);

switch(obj.object_index) {
    case objEleBoton:
        str += ", n: "+string(obj.n);
        str += "#Dificultad: "+obj.dificultad;
        str += "#Boton: "+obj.fname;
        str += "#Imagen: "+obj.fname2;
        str += "#Efecto: "+obj.efecto;
        infomdx(object_get_name(obj.object_index), str)
        exit;
    break;
    case objEleFondo:
        str += ", n: "+string(obj.n);
        str += "#Imagen: "+obj.fname;
        infomdx(object_get_name(obj.object_index), str)
        exit;
    break;
    case objEleEstatico:
        str += ", n: "+string(obj.n);
        str += "#Imagen: "+obj.fname;
        str += "#Efecto: "+obj.efecto;
        infomdx(object_get_name(obj.object_index), str)
        exit;
    break;
    case objEleAnimado:
        str += ", n: "+string(obj.n)+", number: "+string(obj.number);
        str += "#Imagen: "+obj.fname;
        str += "#Efecto: "+obj.efecto;
        infomdx(object_get_name(obj.object_index), str)
        exit;
    break;
    case objEleMovil:
        str += ", n: "+string(obj.n)+", number: "+string(obj.number);
        str += "#Imagen: "+obj.fname;
        str += "#Efecto: "+obj.efecto;
        infomdx(object_get_name(obj.object_index), str)
        exit;
    break;
}

infosm(object_get_name(obj.object_index), str)
