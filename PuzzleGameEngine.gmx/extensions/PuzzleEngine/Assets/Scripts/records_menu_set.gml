/// records_menu_set(ds_grid records)

var grid = argument0;

var n = real(grid[? "n"])
show_debug_message("n: "+string(n))
for(var i = 0; i < n; i++) {
    var index = "record-"+string(i);
    var json = grid[? index];
    show_debug_message("json: "+string(json))
    var intentos = json_decode( json );
    if (real(intentos[? "intentos"]) > 0) {
        var sprite = intentos[? "img"];
        //show_debug_message("'"+sprite+"' a buscar...")
        with(objBotonMenu) {  
            var img_nom = imagen;
            //show_debug_message("comparando '"+img_nom+"'")
            if (img_nom == sprite) {
                sprite_index = sprCoronaBrillante
                // posible lugar a cargar los RECORDS
            } 
        }
    }
}
