
var obj = argument0;

if (DEBUG) show_debug_message("obj.fname:"+obj.fname2)

var fname = get_open_filename_ext("Imagen JPG|*.JPG|Imagen PNG|*.PNG","",global.workdir,"Seleccionar Imagen de Juego");

if (fname == "") exit;

fname = string_replace(fname,global.workdir,"");

if (DEBUG) show_debug_message("fname: "+fname)

obj.fname2 = fname;
