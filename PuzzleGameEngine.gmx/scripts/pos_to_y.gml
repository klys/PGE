/// pos_to_y(posicion)

switch(argument0) {
    case "0-0": case "1-0": case "2-0": return 128;
    case "0-1": case "1-1": case "2-1": return 224;
    case "0-2": case "1-2": case "2-2": return 320;
}
return 0;
