
var fname = get_open_filename_ext("Imagen JPG|*.JPG|Imagen PNG|*.PNG","",global.workdir,"Seleccionar Imagen de Boton");

if (fname == "") exit;

fname = string_replace(fname,global.workdir,"");

var sprite = sprite_add(fname,1,0,0,0,0);

var boton = instance_create(view_xview[0]+(view_wview[0]/2),view_yview[0]+(view_hview[0]/2),objEleBoton);
boton.image = sprite;
boton.fname = fname;
