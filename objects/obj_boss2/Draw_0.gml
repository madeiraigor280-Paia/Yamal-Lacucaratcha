draw_self();
//Fazendo o efeito de piscar


draw_rectangle_colour(x_barra, y-12, x_barra + tam_barra * (hp_secundario/vida_max), y-4, c_orange, c_orange, c_orange, c_orange, 0);
draw_rectangle_colour(x_barra, y-12, x_barra + tam_barra * (vida_atual/vida_max), y-4, c_red, c_red, c_red, c_red, 0);
draw_sprite_stretched(spr_linha_vida, 0, x_barra, y-12, tam_barra, 10)
//O alpha ativa e desativa
if (alpha > 0){
	gpu_set_fog(true, color, 0, 0);
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, alpha);
	gpu_set_fog(false, color, 0,  0);
}

draw_text(x, y - 20, estado)
draw_text(x + 20, y, vida_atual)

