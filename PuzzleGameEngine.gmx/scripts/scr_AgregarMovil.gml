
var fname = get_open_filename_ext("Imagen PNG|*.PNG","",global.workdir,"Seleccionar Imagen Movil");

if (fname == "") {
    alert("Cancelado!", "No se ha seleccionado una imagen!")
    exit;
}

fname = string_replace(fname,global.workdir,"");

var obj = instance_create_vc(objEleMovil);

obj.fname = fname;
