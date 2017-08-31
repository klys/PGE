var fname = "efectos\"+argument0;

if not file_exists(fname) {
    show_debug_message(fname+ " no existe!")
    return -1;
}

var file = file_text_open_read(fname);

var str = file_text_read_string(file);

var json = json_decode(str);

if (json == -1) {
    show_debug_message(str+" no es un JSON valido!")
    return -1;
}
json[? "n"] = real(json[? "n"]);
json[? "time"] = real(json[? "time"]);
json[? "redoTime"] = real(json[? "redoTime"])
var vars = false;
for(var i = 0; i < json[? "n"]; i++) {
    var js = json_decode(json[? "e-"+string(i)]);
    switch(js[? "efecto"]) {
        case "scale":
            if (vars == false) {
                vars = true;
                json[? "tranS"] = real(json[? "tranS"]);
            }
            js[? "xs"] = real(js[? "xs"]);
            js[? "ys"] = real(js[? "ys"]);
        break;
        case "rotate":
            if (vars == false) {
                vars = true;
                json[? "tranR"] = real(json[? "tranR"]);    
            }
            
            js[? "rot"] = real(js[? "rot"]);
        break;
    }
    json[? "e-"+string(i)] = js;
}

return json;

