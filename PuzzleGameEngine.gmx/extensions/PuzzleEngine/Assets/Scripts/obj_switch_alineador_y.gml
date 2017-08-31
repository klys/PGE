with(argument0) {
    y_alg = !y_alg;
    moviendo = true;
    with(all) if variable_instance_exists(id, "notme") notme = true;
    notme = false;
}
