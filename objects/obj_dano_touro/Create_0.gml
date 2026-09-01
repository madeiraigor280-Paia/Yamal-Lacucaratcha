dano = 0;
pai = noone;
image_alpha = 1;

cooldown_morte = 90

//Criar uma lista para salvar em quem eu posso dar dano
aplicar_dano = ds_list_create();

morrer = true;
ja_bati = false

dou_dano = function()
{
	if (ja_bati) exit;
	//Tomando dano
	var _player = instance_place(x, y, obj_player);
	var _clone = instance_place(x, y, obj_clone_jonas)
	if (instance_exists(_player))
	{
		
		if (_player && _player.inv_timer <= 0)
		{
			if (_player.estado != "dead")
			{
				_player.dano = true	
				
				
				_player.timer_dano = _player.tempo_dano;
				_player.inv_timer = _player.inv_tempo;
				
				ja_bati = true
			}
			
			
		}
		
	}
	
	
	//var _inimigo = instance_place(x, y, obj_inimigo_pai)
	
	//if (_inimigo && inv_timer <= 0)
	//{
	
	//	if (_inimigo.morto == false && _inimigo.dano == false)
	//	{
	//		dano = true;
			
	//			//Dando o valor do timer dano
	//		timer_dano = tempo_dano;
	//		inv_timer  = inv_tempo;
	//	}
	//}
	
	
}