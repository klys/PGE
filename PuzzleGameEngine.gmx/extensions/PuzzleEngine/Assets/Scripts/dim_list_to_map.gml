/// dim_list_to_map(lista)

var lista = argument0;

var nmap = ds_map_create();
for(var i = 0; i < ds_list_size(lista); i++) {
    nmap[? "list-"+string(i)] = lista[| i];
}

return nmap;
