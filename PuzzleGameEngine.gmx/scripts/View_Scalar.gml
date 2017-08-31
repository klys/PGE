/*
    This script must be executed on room creation or room start event
    It scale the view to fit the game.
    Dependencies: objGameCenter, objGameEndPos, objGameStartPos
    
    How to use the dependencies:
    
        objGameCenter must be put on the center of the game area.
        objGameEndPos must be put on the right down corner of the game area
        objGameStartPos must be put on the left up corner of the game area
    
    Este script debe ser ejecutado en Room Creation o en el evento Room Start
    Este escala la View para que encaje el juego.
    Dependencias: objGameCenter, objGameEndPos, objGameStartPos
    
    Como usar las depencencias:
    
        objGameCenter debe ser puesto en el centro del area del juego
        objGameEndPos debe ser puesto en la esquina inferior derecha
        objGameStartPos debe ser puesto en la esquina superior izquierda
    
    
*/
display_set_gui_maximise();
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var game_w = objGameEndPos.x - objGameStartPos.x;
var game_h = objGameEndPos.y - objGameStartPos.y;

var scale = game_w / gui_w; 

var eq_w = scale * gui_w;
var eq_h = scale * gui_h;

if (DEBUG) {
    show_debug_message("gamePP __ w:"+string(game_w)+" h:"+string(game_h));
    show_debug_message("gui __ w:"+string(gui_w)+" h:"+string(gui_h));
    show_debug_message("equivalent scale ___ w:"+string(eq_w)+" h:"+string(eq_h));
}

// acomodar la view
view_hview[0] = eq_h;
view_wview[0] = eq_w;
view_hport[0] = view_hview[0];
view_wport[0] = view_wview[0];

// centrar la view
view_xview[0] = objGameCenter.x - (view_wview[0]/2);
view_yview[0] = objGameCenter.y - (view_hview[0]/2);
