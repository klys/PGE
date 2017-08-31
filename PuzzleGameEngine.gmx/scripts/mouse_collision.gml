/// mouse_collision(x,y,w,h)


if not (window_mouse_get_x() > argument0 and window_mouse_get_x() < argument0+argument2) return false;
if not (window_mouse_get_y() > argument1 and window_mouse_get_y() < argument1+argument3) return false;

return true;
    

