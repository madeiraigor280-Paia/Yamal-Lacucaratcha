alarm[0] = game_get_speed(gamespeed_fps) * 2;
max_vida = irandom_range(2, 4);
vida = max_vida;
hspeed = choose(4, -4);
posso_dano = false;

alpha = 0;
colisaonave = false

color = c_white;
tempo_dano = 90;

timer_dano = 0;


andando = function()
{
	
	var _chao = place_meeting(x + hspeed, y, obj_chao);

	if (_chao)
	{
		hspeed = -hspeed;	
	
	}

	
}


//Descobrindo se eu fui criado uma sequence
//O que faz saber se ele está uma sequencia ?
//Usando o in_sequence

//Método para atirar
atirando = function()
{
	var _valor = choose(1, 2, 3)
	
	switch(_valor)
	{
		case 1:
		{
			var _tiro	= instance_create_layer(x, y,"Particulas", obj_tiro_inimigo1);
			_tiro.vspeed = 4;
			audio_play_sound(snd_laser, 1, 0);
			
		}
		break;
		
		case 2:
		{
			instance_create_layer(x, y, "Inimigo_etc", obj_bomba);
			instance_create_layer(x, y, "Inimigos", obj_inimigo_porco);
			
			
		}
		break;
		
		case 3:
		{
			tiro_4();
			audio_play_sound(snd_multi_laser, 1, 0);
		}
		break;
	}	
}

crio_explosao = function()
{
	instance_destroy();
	
	
	var _explosao = instance_create_layer(x, y, layer, obj_explosao_inimigos);
	
	_explosao.image_angle = random(359)
	
}

morrendo = function()
{
	sendo_destruido(obj_explosao_inimigos);
	
	
	var _chance = random(100)
	//Criando o power up
	//Se o chance for maior do que 90
	//Ele cria o power up
	if (_chance > 90)
	{
		instance_create_layer(x, y, layer, obj_coletavel)
	}
		
	
}

tomo_dano = function()
{
	screenshake(20);
	vida--;
	
	
	
	
}


tiro_4 = function()
{
		for (var i=0; i<36; i++)
	{
		var _dire = i*-10;
		var _tiro = instance_create_layer(x,y,"Inimigo_etc",obj_tiro_inimigo1);
		_tiro.speed = -4;	
		_tiro.direction = 0+_dire;
		_tiro.image_angle = _tiro.direction+90;
		
		
	}
}

