/// dem_editar_text()

with(argument0) {
    var tn = get_string("Numero del Texto a Editar:","");
    if (tn != "") {
        tn = real(tn);
        if (tn >= 0) and (tn < ds_list_size(texts)) {
            texto = get_string("Editar Texto:",texts[| tn])
            texts[| tn] = texto;
        }
    }
}
