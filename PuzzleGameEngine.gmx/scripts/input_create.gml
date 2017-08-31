/// input_create("titulo", "default", object_id, "variable", real or not, callback script)

if (instance_exists(objWindowGUI) == true) exit;

var input = instance_create(0,0,objInputGUI);
input.caption = argument0;
keyboard_string = argument1;
input.obj = argument2;
input.variable = argument3;
input.number = argument4;
input.script = argument5;




