var str, file;
 file = file_text_open_read(working_directory + argument0);
 str = file_text_read_string(file); 
 //show_message("cargar_data:"+str)
 //data = base64_decode(str);
 
 //var list = ds_list_create();
 
 //list = decryp_msg(str)
 
 file_text_close(file);
 
 return str;
