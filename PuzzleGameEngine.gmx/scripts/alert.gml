/// alert("titulo", "mensaje")

if (instance_exists(objWindowGUI) == true) exit;

var obj = instance_create(0,0,objAlert);
obj.caption = argument0;
obj.txt = argument1; 
