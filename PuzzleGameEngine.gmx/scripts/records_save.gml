/// records_save(ds_grid_write(records))
var str, file;
 str = argument0;
 file = file_text_open_write("records");
 if (DEBUK) show_debug_message("RECORD_SAVE: "+str)
 file_text_write_string(file, str);
 file_text_close(file);
