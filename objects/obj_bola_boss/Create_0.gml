quicada = 0;
max_quicada = random_range(5, 8);
colisaoplayer = false;
colisaoparede = false;
pode_colidir = false;


vel_jump = 10;

posso_dar_quicar = true;

velh = 0;
velv = 0
grav = 0.1;

dou_dano = function()
{
	
	//Tomando dano
	var _player = instance_place(x, y, obj_player);
	
	if (instance_exists(_player))
	{
		
		if (_player && _player.inv_timer <= 0)
		{
			if (_player.estado != "dead")
			{
				_player.dano = true	
				
				
				_player.timer_dano = _player.tempo_dano;
				_player.inv_timer = _player.inv_tempo
				
				var _audio = audio_play_sound(snd_hit, 1, 0)
				
				
			}
			
			
		}
		
	}
	
	
	
}

