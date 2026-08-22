with(other)
{
	
	levou_dano = true
	if (levou_dano && !invencivel)
	{
		invencivel = true
		velh = 0;
		inimigo_vida--;
	
		if (inimigo_vida <= 0)
		{
			inimigo_morto = true;
			muda_sprite(spr_inimigo_die)
		
		
		
		}
		else
		{
			alarm[0] = room_speed;
			sprite_index = spr_inimigo_hit;
			image_index = 0
		
		}
	}	
	
	
	
}
instance_destroy()