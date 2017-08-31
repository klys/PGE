
var fname = get_open_filename_ext("Imagen PNG|*PNG", "", global.workdir, "Seleccionar Imagen Estatica");

if (fname == "") {
    alert("Cancelado!", "Creacion cancelada # Puede Presionar ESC.")
    exit;
}

fname = string_replace(fname,global.workdir,"");


var estatico = instance_create(view_xview[0]+(view_wview[0]/2), view_yview[0]+(view_hview[0]/2),objEleEstatico);

estatico.image = sprite_add(fname,1,0,0,0,0);
estatico.fname = fname;
