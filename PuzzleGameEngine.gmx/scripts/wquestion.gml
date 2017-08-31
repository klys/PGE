/// wquestion("pregunta", callback)

if (instance_exists(objWindowGUI) == true) exit;

var questionobj = instance_create(0,0,objQuestionGUI);

questionobj.txt = argument0;
questionobj.script = argument1;
