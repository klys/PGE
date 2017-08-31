if not variable_global_exists("fname") {
    alert("Falta un paso...","Debe guardar el mapa primero antes de probar!")
    exit;
}

instance_create(-48,-48,objPlayMap)
