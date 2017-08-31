/// coronas_save(JSON)
var str, file;
 str = argument0;
 file = file_text_open_write("nivel");
 show_debug_message("NIVEL_SAVE: "+str)
 file_text_write_string(file, str);
 file_text_close(file);
