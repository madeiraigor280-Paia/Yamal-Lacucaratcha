/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


estado = noone;

velh = 0;
velv = 0;

max_velh = 2;
max_velv = 3;

grav = .2;

//Controles
right = noone;
left  = noone;
//jump  = noone;

//Dash
dash  = noone;

//Variáveis do dash
vel_dash = 6;
//Checando se eu já dei o dash
dei_dash = false

//Contando a duração do dash
duracao_dash = 10
tempo_dash = duracao_dash;

//Contador de dash
max_dash = 1
qtd_dash = max_dash;

//Se estou no chao
chao  = noone;

pega_controles = function()
{
	right = keyboard_check(ord("D"));
	left  = keyboard_check(ord("A"));
	
	//jump  = keyboard_check_pressed(ord("K"));
	
	dash = keyboard_check_pressed(ord("L"));
	
}

//Gravidade
aplica_grav = function()
{
	//Pegando o tilemap da colisão
	var _col = layer_tilemap_get_id("bg_col");
	//Checando se eu estou no chão
	chao = place_meeting(x, y + 1, _col);
	
	//Se eu NÃO estou no chão, eu aplico a gravidade
	if (!chao)
	{
		velv += grav;
		
		velv = clamp(velv, -max_velv, max_velv);
	}
	else//Se eu estou no chão, eu zero a velv
	{
		velv = 0;
		
		//Eu toquei no chão
		//Reseto a quantidade
		qtd_dash = max_dash
		
	}
	
	show_debug_message(velv);
}



estado_parado = function()
{
	velh = 0;
	velv = 0;
	pega_controles();
	aplica_grav();
	image_index = 0;
	sprite_index = spr_player_run;
	
	
	//Mudando de estado
	//Checando se eu não estou mais no chão
	if (velv != 0)
	{
		estado = estado_ar;
	}
	
	if (jump)
	{
		velv = -max_velv;
		estado = estado_ar;
	}
	
	if (right xor left)
	{
		estado = estado_movendo;
	}
	
	if (velv != 0) estado = estado_ar;
	
	//Se eu apertei o dash, eu vou para o estado de dash
	if (dash && qtd_dash)
	{
		estado = estado_dash	
		
	}
}

estado_ar = function()
{
	
	show_debug_message("Ar");
	
	//Pegando a gravidade
	aplica_grav();
	pega_controles();
	sprite_index = spr_player_jump;
	velh = (right - left) * max_velh;
	
	
	
	//Checando se eu estou subindo ou caindo
	if (velv > 0)//Eu estou caindo
	{
		if (image_index > 4 && !chao)
		{
			image_index = 4;
		}
	}
	if (velv < 0)
	{
		if (image_index > 3) image_index = 3;
	}
	
	//Terminou a animação eu volto para o estado de parado
	if (image_index >= image_number - 0.3)
	{
		estado = estado_parado;
	}
	
	//Entrando no estado de dash
	if (dash && qtd_dash)
	{
		estado = estado_dash;	
	}
	
}


estado_movendo = function()
{
	sprite_index = spr_player_run;
	
	pega_controles();
	aplica_grav();
	
	velh = (right - left) * max_velh;
	
	
	//Mudando de estado
	if (velh == 0)
	{
		estado = estado_parado;
	}
	
	if (jump)
	{
		velv = -max_velv;
		estado = estado_ar;
	}
	
	if (dash && qtd_dash > 0)
	{
		estado = estado_dash;
	}
	
}

estado_dash = function()
{
	//Diminuindo o tempo do dash
	tempo_dash--;
	
	//Checando se eu estou com a sprite certa
	if (sprite_index != spr_player_jump)
	{
		//Definindo a sprite
		sprite_index = spr_player_jump;
	}
	
	if (!dei_dash)
	{
		//Avisando que ele tem que diminuir a qtd do dash
		qtd_dash--;
		
		//Dando o dash
		var _right = keyboard_check(ord("D"));
		var _left  = keyboard_check(ord("A"));
		var _down  = keyboard_check(ord("S"));
		var _up    = keyboard_check(ord("W"));
	
		//Pegando a direção com base nas teclas
		var _dir = point_direction(0, 0, (_right - _left), (_down - _up))
	
		velh = lengthdir_x(vel_dash, _dir)
		velv = lengthdir_y(vel_dash, _dir)
		
		//Avisando que eu dei dash
		dei_dash = true;
	}
	//Eu vou travar a imagem da sprite
	image_index = 0;
	
	//Se acabou o tempo do dash, eu saio do estado de dash
	if (tempo_dash <= 0)
	{
		estado = estado_parado;	
		
		//Eu reseto o tempo do dash
		tempo_dash = duracao_dash
		//Avisando que eu já dei o dash, acabou
		dei_dash = false
	}
	
	//Criando o meu rastro só as vezes
	if (tempo_dash % 3 == 0)
	{
		var _rastro =  instance_create_depth(x, y, depth + 1, obj_rastro)
		//Definindo as informações do rastro
		_rastro.sprite_index = sprite_index
		_rastro.image_index = image_index
		_rastro.image_xscale = image_xscale
		_rastro.image_speed = 0;
	}
}




//Iniciando o estado do jogador
estado = estado_parado;