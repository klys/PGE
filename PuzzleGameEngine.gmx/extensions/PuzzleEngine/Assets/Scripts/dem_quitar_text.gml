/// dem_quitar_text()

with(argument0) {
    var qn = get_string("Cual Texto desea quitar?","");
    if (qn != "") {
        qn = real(qn);
        if (qn >= 0) and (qn < ds_list_size(texts)) {
            ds_list_delete(texts,qn)
        }
    }
}
