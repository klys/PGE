with(argument0) {
    x_alg = !x_alg;
    moviendo = true;
    with(all) if variable_instance_exists(id, "notme") notme = true;
    notme = false;
}
