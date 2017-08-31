/// dim_map_to_list(map)

var amap = argument0;

var nlist = ds_list_create();

var mm = 0;

while(not is_undefined(amap[? "list-"+string(mm)])) {
    nlist[| mm] = amap[? "list-"+string(mm)];
    mm++;
}

return nlist;
