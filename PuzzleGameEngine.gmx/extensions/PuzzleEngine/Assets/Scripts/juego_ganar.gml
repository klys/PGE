// juego_ganar()
/*
    Script de Victoria
    Suma coronas totales
    Actualiza las coronas total y por nivel
    Actualiza los records
    Sube el Nivel si se esta pasando el ultimo mundo
*/

var coronas_juego = coronas_calcular()
niveles_subir(global.filemap)
records_game_win(global.imagen, global.intentos, global.horas,global.minutos,global.tiempo,coronas_juego)
coronas_dar(coronas_juego)

with(objGUIDrawer) event_user(0) // actualizar record del cuarto
