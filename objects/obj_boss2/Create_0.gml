
#region variaveis
cutscene = true;
cooldowncutscene = 0
walking = 0;
cooldownactionboss = 0
wl = true;
wr = false
cooldownwalking = 500;
shooting = false
cooldownshooting = 0;
tired = false;

vida_max = 100;
vida_atual = vida_max;

dano = noone

estado = "entrando";
//Cooldown do boss para descer
entrando = 415;

tempo_taunt = 300;

ja_andei = false
ja_bati_na_parede = 0;

entrei_no_ataque = false;
posso = true;

escolhi = false

ataques = choose("Laser", "Bola", "Summonar")

alpha = 1;
color = c_white;

//Variavel para o tamanho do dano
xscale_dano = sprite_width / sprite_get_width
xscale_dano_largura = sprite_height / sprite_get_height;
#endregion


#region metodos
atacando = function(_sprite_index, _image_index_min, _image_index_max, _dist_x, _dist_y, _xscale_dano, _yscale_dano, _proximo_estado)
{
	hspeed = 0;	
	//Caso a pessoa NÃO passe xscale eu defino ele como 1
	if (!_xscale_dano) _xscale_dano = 1;
	if (!_yscale_dano) _yscale_dano = 1;
	
	//Fazendo ele ir para o proximo estado
	if (_proximo_estado == undefined) _proximo_estado = "parado";
	
	//Se ele não estiver na sprite
	if (sprite_index != _sprite_index)
	{
		sprite_index = _sprite_index;
		image_index = 0;
		
	}
	
		
	if (image_index > image_number-1)
	{
		estado = _proximo_estado;
			
			
	}
	

		
	//Criando o dano
	if (image_index >=  _image_index_min && image_index < _image_index_max && posso)
	{
		dano = instance_create_layer(x + _dist_x , y + _dist_y, "Colisores", obj_dano);
		
		dano.image_xscale = _xscale_dano;
		dano.image_yscale = _yscale_dano;
		posso = false;
			
	}
	
	
	//Destruindo o dano
	var _dano = obj_dano
	if (instance_exists(dano))
	{
		
		if (_dano.ja_bati == false && image_index >= _image_index_max)
		{
			
			instance_destroy(dano);
		
			
		}
	}

}

leva_dano = function(_sprite)
{

	var _tiro_player = instance_place(x, y, obj_colisao_dano_bola)
	
	
	
	
	//Checando se estou com a sprite certa
	if (_tiro_player)
	{
		screenshake(10)
		audio_play_sound(snd_hit, 1, 0)
		alpha = 1;
		_tiro_player.dei_dano = true
		
		
		if (estado != "Atacando" or estado != "entrando")
		{
			vida_atual -= 20
			if (sprite_index != _sprite)
			{
				//Iniciando o que for preciso para este estado
				image_index = 0;
		
				//vida_atual--;
			
			}
			sprite_index = _sprite;
		}
		
		//Condição para sair do estado
		if (vida_atual < 0) 
		{
			estado = "Dead";
		}
	
	}
	
	alpha = lerp(alpha, 0, 0.1);
	
}
	


criei_bolas = false;

cria_bolas = function(_image_min = 1)
{
	//Chamando a variavel de quantiadade
	var _qtd_bolas = irandom_range(5, 10)
	
	
		
		repeat(_qtd_bolas)
		{
			//Dando o numero aleatório
			_pos_x = random_range(x - sprite_width/2, x + sprite_width/2)
			_pos_y = random_range(y - sprite_height, y)
			instance_create_layer(_pos_x, _pos_y, "Colisores", obj_bola_boss)
		
		
		
		}
	
	
}

#endregion