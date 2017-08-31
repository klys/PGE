/// dialog_play(fname)

var fname = argument0;

var file = file_text_open_read(fname);

var json = file_text_read_string(file);

var map = dim_json_to_map(json);

var obj = instance_create(-40,-40,objDialogoTester);
obj.acciones = map;
with(obj) alarm[0] = 1
