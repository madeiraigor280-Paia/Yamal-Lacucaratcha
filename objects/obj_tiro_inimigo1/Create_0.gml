//vspeed = 4;
morrendo = function()
{
	instance_destroy();


	//Criando a minha particula
	var _part = instance_create_layer(x, y, "Particulas", obj_explosao_tiro);
	//Quero mudar o angulo dela
	_part.image_angle = random(359);
	
}

dou_dano = function()
{
	
	//Tomando dano
	var _player = instance_place(x, y, obj_player);
	
	if (instance_exists(_player))
	{
		
		if (_player && _player.inv_timer <= 0)
		{
			if (_player.estado != "dead" && _player.estado != "dash")
			{
				_player.dano = true	
				
				
				_player.timer_dano = _player.tempo_dano;
				_player.inv_timer = _player.inv_tempo
				
				var _audio = audio_play_sound(snd_hit, 1, 0)
				
				morrendo();
			}
			
			
		}
		
	}
	
	
	
}
