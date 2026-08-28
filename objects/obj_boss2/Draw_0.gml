draw_self();
//Fazendo o efeito de piscar


//O alpha ativa e desativa
if (alpha > 0){
	gpu_set_fog(true, color, 0, 0);
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, alpha);
	gpu_set_fog(false, color, 0,  0);
}

draw_text(x, y - 20, estado)
draw_text(x + 20, y, vida_atual)

