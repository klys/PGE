
var fname = get_open_filename_ext("Imagen PNG|*.PNG","",global.workdir,"Seleccionar Imagen Animada");

if (fname == "") exit;

fname = string_replace(fname,global.workdir,"");


//var sprite = sprite_add(fname,0,1,0,0,0);

var animado = instance_create(view_xview[0]+(view_wview[0]/2),view_yview[0]+(view_hview[0]/2),objEleAnimado);
//boton.image = sprite;
animado.fname = fname;

