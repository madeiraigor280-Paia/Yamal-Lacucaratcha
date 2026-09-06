draw_set_font(fnt_pontos)

if (!mostro_o_timer)
{
	draw_text(40, 100, string(round(global.timer)) + " Segundos" )
}

draw_set_font(-1)