draw_set_font(fnt_dialogo);

draw_set_halign(1)
draw_set_valign(1);

if (player_em_mim && sou_saida)
{
	draw_sprite(spr_keyboard_w, 0, x, y - 10)
	draw_text(x, y, "Voce quer ir mesmo enfrentar o messi ???");
}

draw_set_font(fnt_tituloquiz);

draw_set_halign(-1)
draw_set_valign(-1);