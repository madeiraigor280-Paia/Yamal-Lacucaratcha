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

estado = "entrando";
//Cooldown do boss para descer
entrando = 400;

ja_andei = false
ja_bati_na_parede = 0;

entrei_no_ataque = false;
posso = true;

ataques = choose("Laser", "Bola", "Summonar")

atacando = function(_sprite_index, _image_index_min, _image_index_max, _dist_x, _dist_y, _xscale_dano, _yscale_dano, _proximo_estado)
{
		
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
	if (instance_exists(_dano))
	{
		
		if (_dano.ja_bati == false && image_index >= _image_index_max)
		{
			
			instance_destroy(obj_dano);
		
			
		}
	}

}