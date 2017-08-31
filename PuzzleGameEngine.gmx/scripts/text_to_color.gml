switch(argument0) {
    case "c_black": return c_black;
    case "c_white": return c_white;
    case "c_yellow": return c_yellow;
    case "c_blue": return c_blue;
    case "c_red": return c_red;
    case "c_fuchsia": return c_fuchsia;
    case "c_aqua": return c_aqua;
    case "c_dkgray": return c_dkgray;
    case "c_gray": return c_gray;
    case "c_green": return c_green;
    case "c_lime": return c_lime;
    case "c_ltgray": return c_ltgray;
    case "c_maroon": return c_maroon;
    case "c_navy": return c_navy;
    case "c_olive": return c_olive;
    case "c_orange": return c_orange;
    case "c_purple": return c_purple;
    case "c_silver": return c_silver;
    case "c_teal": return c_teal;
    case "custom":
    default:
    case "personalizado":
    var r = get_string("Dame R (No Cancelar) Ej( 0 - 255)", "0");
    r = string_digits(r);
    var g = get_string("Dame G (No Cancelar) Ej (0 - 255)", "0");
    g = string_digits(g);
    var b = get_string("Dame B (No Cancelar)Ej (0 - 255)", "0");
    b = string_digits(b);
    return make_color_rgb(real(r),real(g), real(b));
}
