/// dem_valid_yy(y)
var yy = argument0;
var col = collision_point(room_width-40,yy,objDialogAction,false,false);
while(col != noone ) {
        col = collision_point(room_width-40,yy,objDialogAction,false,false);
        yy += 15
}

return yy;
