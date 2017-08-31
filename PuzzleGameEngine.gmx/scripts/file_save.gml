/// file_save(file, str)
var str, file;
 str = argument1;
 file = file_text_open_write(argument0);
 //show_debug_message("RECORD_SAVE: "+str)
 file_text_write_string(file, str);
 file_text_close(file);
