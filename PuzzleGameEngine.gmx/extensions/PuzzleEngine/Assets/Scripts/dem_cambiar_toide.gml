
var toIdex = get_string("Dame el nuevo identificador a editar", "");

if (toIdex == "") exit;


with(argument0) {
    if (toIde == -1) exit;
    toIde = real(toIdex);
    switch(doi) {
        case "text":
            action = "Cambiar Texto en Dialogo ($"+toIdex+".)"
        break;
        case "dialog-quit":
            action = "Eliminar Dialogo ($"+toIdex+".)"
        break;
    }
}
