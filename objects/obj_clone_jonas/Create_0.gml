velh		= 0;
velv		= 0;
vel			= 4;
grav		= .3;
vel_jump	= 4;

move_chekpoint = false;


if (instance_exists(obj_bola_clone))
{
	obj_bola_clone.ja_clonei_na_fase = true	
}


//Variaveis quicadas
max_quicadas = 5;
attack_speed = 2

//Parte que eu fiz do Boss e outros
qtd_pulos = 0;
max_pulos = 2
pulo_hit = true

//É para saber se eu tenho as facas ou não
faca = false;
//Quantas cargas ainda tem
faca_cargas = 0


posso_perder_vida = true;
dano		= false;
tempo_dano  = room_speed * 0.5;
timer_dano  = 0;

tempo_reinicia = room_speed * 3;
timer_reinicia = tempo_reinicia

inv_tempo = room_speed * 2;
inv_timer	= 0;

//Dash
dash  = noone;

//Variáveis do dash
vel_dash = 6;
//Checando se eu já dei o dash
dei_dash = false

//Contando a duração do dash
duracao_dash = 10
tempo_dash = duracao_dash;

timer_cooldown_dash = 120;
tempo_cooldown_dash = timer_cooldown_dash;
//Contador de dash
max_dash = 1
qtd_dash = max_dash;


estado = "normal";
//sprite_index = spr_player1_out;
image_speed = 0;

//Criando a transição de saida da porta SE eu não estou na tela inicia
//if (room != rm_tela_inicial)
//{
//	layer_sequence_create("Transicao", x, y, sq_transicao_out);
//}

inputs = {
		left	: ord("A"),
		right	: ord("D"),
		jump	: vk_space,
		dash    : ord("Q"),
		dialogo : ord("F")
}

estado_normal = function()
{
	//Controlando o player
	image_speed = 1;
	var _chao = place_meeting(x, y + 1, obj_chao);
	var _left, _right, _jump;
	_left	= keyboard_check(inputs.left)
	_right	= keyboard_check(inputs.right);
	_jump	= keyboard_check_pressed(inputs.jump);
	_dash   = keyboard_check(inputs.dash)
	_entrar_dialogo = keyboard_check_pressed(inputs.dialogo)
	
	//Só pode me controlar se o timer do dano esta zerado
	if (timer_dano <= 0 and !global.dialogo)
	{
		velh	= (_right - _left) * vel;
	}
	
	// Diminui o cooldown se ele for maior que zero
	if (tempo_cooldown_dash < 120) 
	{
		tempo_cooldown_dash++;
	}
	
		
	
	// SÓ entra no dash se o cooldown for igual a zero!
	if (_dash && qtd_dash > 0 && tempo_cooldown_dash >= 120 and !global.dialogo)
	{
		estado = "dash"; 
	}
	
	//Pulando
	if (_chao)
	{
		qtd_dash = max_dash; // Recarrega o dash ao tocar no chão
		if (_jump and !global.dialogo)
		{
			
			velv = -vel_jump;
			audio_play_sound(snd_pulo, 1, 0)
			
			
		
		}
		
		
		
		
		//Se eu estou no chão e me movendo
		if (velh != 0)
		{
			//Mudo a sprite
			sprite_index = spr_player_run;
			//Faço ele olhar para onde eu estou indo
			image_xscale = sign(velh);
			
		}
		else
		{
			sprite_index = spr_player_idle;
			
				
			
			if distance_to_object(obj_par_npcs) <= 10 {

		     if global.tecla and global.dialogo == false {	
			var _npc = instance_nearest(x, y, obj_par_npcs);
			var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
			_dialogo.npc_nome = _npc.nome;
		
					}
	
	
				}
				
			
			
			
		}
			
		
	}
	else //Não estou no chão
	{
		//Mudando a sprite
		if (velv < 0)
		{
			sprite_index = spr_player_jump;
			
		}
		else
		{
			sprite_index = spr_player_fall;
			
			//Se eu estou indo para baixo, ai eu posso cair na cabeça do inimigo
			var _inimigo	= instance_place(x, y + 6, obj_inimigo_pai)
			
			//Se eu cai no inimigo
			if (_inimigo)
			{
					dano = false;
					//Se o inimigo não ta morto
					if (_inimigo.morto == false)
					{
					
					
						//Subo no ar novamente!
						velv = -vel_jump;
				
						//Avisando para o inimigo que eu acertei que ele tomou dano!
						_inimigo.dano = true;
					}
			}
		}
		
		//Aplico a gravidade
		//Aplicando a gravidade
		//velv += grav;
		if (velh != 0)
		{
			image_xscale = sign(velh);	
			
		}
		
	}
	
	if (dano)
	{
		
		sprite_index = spr_player_hit;
		velh = 0;
		if (posso_perder_vida)
		{
			global.vida--;
			
			if (global.vida <= 0)
			{
				//if (instance_exists(obj_player))
				//{
					
					
				//}
				//estado = "dead";
				//global.morangos = 0
				////Reiniciando para o player se controlar
				//global.player1 = true;
				morre_player();
				
			}
			else
			{
				posso_perder_vida = false;
			}
			
			
		}
		
		
	}
	
	//Se o timer do dano é maior do que zero, eu diminuo ele
	if (timer_dano > 0) 
	{
		timer_dano--;	
	}
	else
	{
		//Acabou o meu timer do dano
		dano = false;
		posso_perder_vida = true;
	}
	
	if (inv_timer > 0)
	{
		inv_timer--;
		
		image_alpha = .5;
	}
	else
	{
		image_alpha = 1;
	}
	
	//Tomando dano
	var _inimigo = instance_place(x, y, obj_inimigo_pai)
	
	if (_inimigo && inv_timer <= 0)
	{
	
		if (_inimigo.morto == false && _inimigo.dano == false)
		{
			dano = true;
			
				//Dando o valor do timer dano
			timer_dano = tempo_dano;
			inv_timer  = inv_tempo;
		}
	}
	
	

	
	
	
}



