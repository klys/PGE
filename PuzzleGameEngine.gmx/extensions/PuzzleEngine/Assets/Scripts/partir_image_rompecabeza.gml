/// partir_imagen(sprite,cuadro)
var imagen = argument0;
var cuadro = argument1;


//var objImg = instance_create(0,0,objImagen);
//objImg.sprite_index = imagen;

var surface = surface_create(sprite_get_width(imagen),sprite_get_height(imagen));

surface_set_target(surface);
//draw_clear_alpha(c_white, 0);
draw_sprite(imagen,0,0,0)
surface_reset_target();
var imagen_partida = ds_grid_create(cuadro,cuadro);//ds_list_create()//ds_map_create();//ds_list_create();//ds_map_create();

var tamanoporsector_w = sprite_get_width(imagen)/cuadro;
var tamanoporsector_h = sprite_get_height(imagen)/cuadro;
for(var i = 0; i < cuadro; i++) {
    for(var j = 0; j < cuadro; j++) {
        var imagenparte = sprite_create_from_surface(surface,(i*tamanoporsector_w),(j*tamanoporsector_h),tamanoporsector_w,tamanoporsector_h,false,false,tamanoporsector_w/2,tamanoporsector_h/2);
        //ds_map_add(imagen_partida,string(i)+"-"+string(j),sprite_create_from_surface(application_surface,(i*tamanoporsector_w),(j*tamanoporsector_h),tamanoporsector_w,tamanoporsector_h,false,false,0,0))
        //ds_list_add(imagen_partida,imagenparte);
        //ds_map_add(imagen_partida,string(i)+"-"+string(j),imagenparte);
        ds_grid_set(imagen_partida,i,j,imagenparte);
    }
}


 surface_free(surface);
//imagen_partida[# cuadro-1, cuadro-1] = 0;
return imagen_partida;

