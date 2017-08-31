///mapa_get(file)

var file = argument0;

if (file_exists(file) == false) return "";

var ofile = file_text_open_read(file)

var str = file_text_read_string(ofile);

return str;
