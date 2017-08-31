
var yyoffset = get_string("Cuanto le agregamos al Dialogo?", "")

if (yyoffset == "") {
    show_message("Posicion invalida.")
    exit;
}

yyoffset = string_digits(yyoffset);

yyoffset = real(yyoffset);

if (yyoffset <= 0) {
    show_message("Posicion deber distinta de cero y mayor a cero.")
    exit;
}
with(argument0) {
    yy = yyoffset;
}
