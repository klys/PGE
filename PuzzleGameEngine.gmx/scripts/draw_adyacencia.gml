if (argument0 != noone) {
    draw_line(x,y,argument0.x,argument0.y)
    var xx = (x+argument0.x)/2;
    var yy = (y+argument0.y)/2;
    draw_text(xx,yy,string(point_distance(x,y,argument0.x,argument0.y))+"_"+string(point_direction(x,y,argument0.x,argument0.y)))
}
