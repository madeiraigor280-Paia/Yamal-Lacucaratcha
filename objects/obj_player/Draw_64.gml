
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

if (global.hud)
{
	draw_sprite_ext(spr_keyboard_e, 0, 1100, 660, 2, 2, 0, c_white, 1);
	draw_text(1130, 650, "Trocar modo");
	
	draw_sprite_ext(spr_keyboard_r, 0, 1060, 580, 2, 2, 0, c_white, 1);
	draw_text(1100, 590, "Troca de corpo");
	
	draw_sprite_ext(spr_keyboard_t, 0, 20, 610, 2, 2, 0, c_white, 1);
	draw_text(40, 590, "Destroi kenny");
	
	draw_sprite_ext(spr_keyboard_q, 0, 20, 650, 2, 2, 0, c_white, 1);
	draw_text(40, 630, "Dash");
	
	draw_sprite_ext(spr_keyboard_h, 0, 20, 560, 2, 2, 0, c_white, 1);
	draw_text(40, 540, "Tirar Hud");
	
	
}
draw_set_font(-1)