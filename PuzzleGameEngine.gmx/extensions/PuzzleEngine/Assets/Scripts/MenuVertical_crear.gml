/// MenuVertical_crear(x,y,object id,Titulo,listString_elementos,listString_gmlScripts)
/*   MenuVertical_crear(x,y,object id,Titulo,listString_elementos,listString_gmlScripts)

    Este script crea un menu horizontal que reaccionara a los eventos
    indicados en la lista de gml scripts.
    
    arg0 - x
    arg1 - y
    arg2 - id
    arg3 - Titulo
    arg4 - stringList texto
    arg5 - stringList scripts
*/
var lista, list2;
    lista = argument4;
    list2 = argument5;
var obj;
argument0 = real(argument0)
argument1 = real(argument1)
obj = instance_create(argument0, argument1, objMenuVerticalImplementador)
with(obj)
{   
    DrawIcon = noone
    invocador = argument2
    Caption = argument3
    
    //ds_list_read(list2, argument5)
    //ds_list_read(lista, argument4)
    for(var i = 0; i <= ds_list_size(lista)-1; i++)
    {
        opStrings[i] = ds_list_find_value(lista, i)
        opScript[i] = ds_list_find_value(list2, i)
        opts = i
    }
    ds_list_destroy(list2)
    ds_list_destroy(lista)
    event_user(0)
    event_user(2)
}

with(all) {
    if (variable_instance_exists(id, "notme") == true)
    {
        notme = true;
    }
}
