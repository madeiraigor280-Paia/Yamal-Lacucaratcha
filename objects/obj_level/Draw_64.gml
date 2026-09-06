//draw_text(20, 20, global.radiacao)

draw_set_font(fnt_radiacao)
draw_sprite_ext(spr_radiacao, 0, 40, 60, 2, 2, 0, c_white, 1);

draw_text_colour(100, 60, global.radiacao, c_green, c_green, c_green, c_green, 1)

draw_set_font(-1)

if (global.mostra_hud)
{
	draw_sprite_ext(spr_alfabeto_h, 0, 30, 745, 3, 3, 0, c_white, 1);
	draw_text(65, 725, "Desabilita Hud (H) ")
	
	draw_sprite_ext(spr_alfabeto_q, 0, 45, 690, 3, 3, 0,  c_white, 1)
	draw_text(80, 670, "Reseta level")
	
	draw_sprite_ext(spr_alfabeto_t, 0, 45, 640, 3, 3, 0, c_white, 1)
	draw_text(80, 610, "Destroi clone")
	
	draw_sprite_ext(spr_alfabeto_g, 0, 1330, 710, 3, 3, 0, c_white, 1)
	draw_text(1190, 690, "Troca de modo")
	
}
else
{
	draw_sprite_ext(spr_alfabeto_h, 0, 30, 750, 3, 3, 0, c_white, 1);
	draw_text(60, 725, "Mostrar HUD (H) ")
		
}

draw_set_font(-1)