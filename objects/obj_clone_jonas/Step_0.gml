//Fazendo ele ter gravidade a todo momento
var _no_chao = place_meeting(x, y + 1, obj_chao)
if (global.transicao != false) exit;

if (!_no_chao)
{
	velv += grav;
}


//if (keyboard_check_pressed(ord("R")))
//{
//	global.player1 = !global.player1	
//}

if (move_chekpoint)exit;

if (global.player1)
{
	var _no_chao = place_meeting(x, y + 1, obj_chao)
	if (global.transicao != false) exit;
	velv += grav;
	
	velh = 0;
	
	
	sprite_index = spr_player_idle;
	image_blend = c_gray;
	exit;	
	
}
else
{
	image_blend = c_white
	
	
}


//show_debug_message(tempo_cooldown_dash)

var _chao = place_meeting(x, y + 1, obj_chao);


	

//Deixando o jogo em tela cheia quando eu apertar o F11
//Ou tirar de tela cheia
if (keyboard_check_pressed(vk_f11))
{
	//Pegando se a tela ta cheia
	var _full = window_get_fullscreen();
    
	//Deixando a tela cheia se ela não esta cheia
	//Ou restaurando a tela se ela esta cheia
	window_set_fullscreen(!_full);
}


if (global.transicao != false) exit;


switch(estado)
{
	
	case "normal":
		estado_normal()
	
	break;
	
	case "dash":
		// Diminuindo o tempo do dash
		tempo_dash--;
		tempo_cooldown_dash = 0
		
		if (sprite_index != spr_player_jump)
		{
			sprite_index = spr_player_jump;
		}
		
		if (!dei_dash)
		{
			qtd_dash--;
			
			// Pegando as direções para onde o jogador quer ir
			var _right = keyboard_check(inputs.right);
			var _left  = keyboard_check(inputs.left);
			var _down  = keyboard_check(ord("S"));
			var _up    = keyboard_check(ord("W"));
		
			var _dir = point_direction(0, 0, (_right - _left), (_down - _up));
		
			velh = lengthdir_x(vel_dash, _dir);
			velv = lengthdir_y(vel_dash, _dir);
			
			dei_dash = true;
		}
		
		image_index = 0;
		
		// Quando o tempo do dash acaba
		if (tempo_dash <= 0)
		{
			estado = "normal"; // Volta para o estado normal do seu switch!
			tempo_dash = duracao_dash;
			dei_dash = false;
		}
		
		// Criando o rastro
		if (tempo_dash % 2 == 0)
		{
			var _rastro = instance_create_depth(x, y, depth + 1, obj_rastro);
			_rastro.sprite_index = sprite_index;
			_rastro.image_index = image_index;
			_rastro.image_xscale = image_xscale;
			_rastro.image_speed = 0;
		}
	
	break;
	
	//case "in":
	//	mudando_sprite(spr_jonas_in);
		
		
	//	//Terminou a animação, para a animação
	//	var _img_vel = sprite_get_speed(sprite_index) / room_speed;
		
	//	//Indo para o estado normal
	//	if (image_index > image_number - _img_vel)
	//	{
	//		image_speed = 0;
	//		image_index = image_number - 1;
	//		image_alpha = 0;
			
	//	}
		
	
	//break;
	
	//case "out":
	//	mudando_sprite(spr_jonas_out);
		

		
	//	var _img_vel = sprite_get_speed(sprite_index) / room_speed;
		
	//	//Indo para o estado normal
	//	if (image_index > image_number - _img_vel)
	//	{
	//		estado = "normal";
			
	//	}
	
	//break;
	
	case "dead":
		mudando_sprite(spr_player_dead);
		
		timer_reinicia--;
		velv = 0;
		
		if (timer_reinicia <= 0)
		{
			global.vida = global.max_vida;
			
			
			
			game_restart();	
		}
		
		//Ficando visivel
		if (image_alpha < 1)
		{
			image_alpha += 0.1;	
			
		}
		
		if (image_index > image_number - 1)
		{
			image_speed = 0;
			image_index = image_number - 1;
		}
	
	break;
	
	
		
	
	
}



var _dire = point_direction(x, y, mouse_x, mouse_y)

