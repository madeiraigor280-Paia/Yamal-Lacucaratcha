
var _x = 40
repeat(global.bola)
{
	
	draw_sprite_ext(spr_bola_gui, 0, _x, 690, 2, 2, 0, c_white, 1)
	
	_x += 40;
}

var _txt = "Modo Dano"


draw_set_font(fnt_dialogo)


if (!global.modo)
{
	_txt = "Modo clone";
	draw_text(1100, 700, _txt)
	
}
else
{
	_txt = "Modo Dano";	
	draw_text(1100, 700, _txt)
	
}

draw_set_font(-1)