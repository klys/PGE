switch(room_get_name(room)) {
    case 'slidingpuzzle96_3x3_Easy':
    case 'slidingpuzzle96_3x3_Moderate':
    case 'memoria96_3x3_Tutorial':
    case 'memoria96_3x3': return coronas_sp3x3(global.horas, global.minutos, global.tiempo)
    case 'slidingpuzzle80_4x4_Easy':
    case 'slidingpuzzle80_4x4_SuperEasy':
    case 'slidingpuzzle80_4x4_Moderate':
    case 'memoria80_4x4': return coronas_sp4x4(global.horas, global.minutos, global.tiempo)
    case 'slidingpuzzle64_5x5_Easy':
    case 'slidingpuzzle64_5x5_SuperEasy':
    case 'slidingpuzzle64_5x5_Moderate':
    case 'slidingpuzzle64_5x5_Hard':
    case 'memoria64_5x5': return coronas_sp5x5(global.horas, global.minutos, global.tiempo)
    case 'rompecabezas96_3x3_Tutorial1':
    case 'rompecabezas96_3x3_SuperEasy':
    case 'rompecabezas96_3x3_Moderate':
    case 'rompecabezas96_3x3': return coronas_rc3x3(global.horas, global.minutos, global.tiempo)
    case 'rompecabezas80_4x4_SuperEasy':
    case 'rompecabezas80_4x4_Moderate':
    case 'rompecabezas80_4x4': return coronas_rc4x4(global.horas, global.minutos, global.tiempo)
    case 'rompecabezas64_5x5_SuperEasy':
    case 'rompecabezas64_5x5_Moderate':
    case 'rompecabezas64_5x5': return coronas_rc5x5(global.horas, global.minutos, global.tiempo)
}
