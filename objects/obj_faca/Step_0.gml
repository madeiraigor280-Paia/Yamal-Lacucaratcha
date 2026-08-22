if melhoria == true{
	y = pontoy + sign(tempo * frequencia) * amplitude;
	tempo++;

}
else
{
	if (quicadas >= max_quicada)
	{
		instance_destroy()	
	}
	
	//timer_vivo++;
	
	
	//if (timer_vivo >= tempo_vivo)
	//{
	//	instance_destroy()	
	//}
}



if (global.modo == true)
{
	
	
	var _porco = instance_place(x, y, obj_inimigo_porco)

	if (instance_exists(_porco))
	{
		if (_porco.morto == false)
		if (_porco)
		{
	
			_porco.muda_sprite(spr_inimigo_porco_dano)
			
	
			if (_porco.sprite_index == spr_inimigo_porco_dano)
				{
					if (_porco.image_index >= image_number-1)
					{
						
						_porco.dano = true;
						_porco.velh = 0;
						_porco.morto = true
					}
				
			
				}
			
	




	
	
		}

		if (_porco.morto == false)
		{
			instance_destroy()
		}
	}

		var _porco = instance_place(x, y, obj_inimigo_porco_bomba)
	if (instance_exists(_porco))
	{
	if (_porco.morto == false)
	if (_porco)
	{
		_porco.muda_sprite(spr_inimigo_porco_dano)
		_porco.dano = true;
	
		if (_porco.sprite_index == spr_inimigo_porco_dano)
			{
				_porco.velh = 0;
				_porco.morto = true
			
			
			}
			
	




	
	
	}

	if (_porco.morto == false)
	{
		instance_destroy()
	}
	
	
	}
	
}

//show_debug_message(quicadas)