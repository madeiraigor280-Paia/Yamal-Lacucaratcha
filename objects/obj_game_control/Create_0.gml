//Método de desenhar o coração
desenha_coracao = function(_x, _y)
{
	draw_sprite_ext(spr_coracao, 8 * (get_timer() / 1000000), _x, _y, 2.5, 2.5, 0, c_white, 1);	
	
}

global.dialogo = false;