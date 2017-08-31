/// dem_agregar_text()

with(argument0) {
    var texto = get_string("Text:","");
    if (texto != "") {
        ds_list_add(texts, texto)
    }
}
