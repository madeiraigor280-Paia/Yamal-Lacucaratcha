if (sprite_index == spr_portal_emerge)
{
	muda_sprite(spr_portal_idle)
	
}

if (sprite_index == spr_portal_sumindo)
{
	image_alpha = 0
	muda_sprite(spr_portal_emerge)
	
	transicao_simples(destino)
	
	
	
}