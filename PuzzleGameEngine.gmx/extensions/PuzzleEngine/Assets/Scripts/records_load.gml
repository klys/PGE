var str, file, data;
 file = file_text_open_read("records");
 str = file_text_read_string(file); 
 
 show_debug_message("RECORD_LOAD: "+str)
 //show_message("cargar_data:"+str)
 //data = base64_decode(str);
 
 //var list = ds_list_create();
 
 //list = decryp_msg(str)
 
 file_text_close(file);
 
 return str;
