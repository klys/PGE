
show_debug_message("scr_AgregarFondo executed.")

var fname = get_open_filename_ext("JPG imagen|*.jpg|PNG imagen|*.png","",global.workdir,"Cargar Imagen PNG o JPG");

if (fname == "") exit;

fname = string_replace(fname,global.workdir,"");

var sprite = sprite_add(fname,1,0,0,0,0);

var yy = 0;

if (instance_exists(objEleFondo) == true) {
    var yyalta = 0;
    var tamano = 0;
    with(objEleFondo) {
        if (y >= yyalta) {
            yyalta = y;
            tamano = h;
        }
    }
    yy = yyalta + tamano;
    show_debug_message("yy:"+string(yy))
}

var fondo = instance_create(0,yy,objEleFondo);
fondo.image = sprite;
fondo.h = sprite_get_size_height_scaled(sprite,720)
fondo.fname = fname;

