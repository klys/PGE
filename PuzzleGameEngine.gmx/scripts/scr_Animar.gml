
var __obj = argument0;

if (__obj.number == -1) {
    alert("No se puede!", "No podemos animar esta imagen sin una cantidad especifica de imagenes!")
    exit;
}

if (DEBUG) {
    show_debug_message("fname: "+__obj.fname)
    show_debug_message("number: "+string(__obj.number))
}

__obj.image = sprite_add(__obj.fname,__obj.number,false,false,0,0);

if (DEBUG) {
    show_debug_message("width: "+string(sprite_get_width(__obj.image)) + " height: "+string(sprite_get_height(__obj.image)) + " subimg: "+string(sprite_get_number(__obj.image)))
}

