#region variaveis que não pode sumir

var _no_chao = place_meeting(x, y + 1, obj_bloco)



#endregion

//Coloquei aqui para contar a gravidade mesmo sem o modo
//if (!_no_chao)
//{
//	velv += gravidade	
	
//}

if (move_chekpoint)exit;

//Coloquei aqui para contar a gravidade mesmo sem o modo
if (!_no_chao)
{
	velv += gravidade	
	
}


//Reiniciar a fase
if (keyboard_check_released(ord("Q")))
{
	room_restart()
		global.player1 = true;

	global.tiro_clone = true;
	
}


if (global.player1 == false) 
{
	image_blend = c_grey
	
	muda_sprite(spr_frog_idle)
	velh = 0;
	velv += gravidade;
	
	if (!instance_exists(obj_clone_player))
	{
		global.player1 = true	
		
	}
	
	exit;
	
	
	
}
else
{
	image_blend = c_white;
	
	
	
	
}


if (global.dialogo)
{
	velh = 0
	velv = 0;
	exit;
	
}

input_player()


var _dire = point_direction(x, y, mouse_x, mouse_y)


//Se nossa direção for igual a 90 ou 270, então retorna verdadeiro
var _intervalo = _dire == clamp(_dire, 90, 270)
var _left, _right, _jump, _xDirection;
	
_left = keyboard_check(ord("A"))
_right = keyboard_check(ord("D"))
	
var _xDirection = _right - _left;
var _na_parede = place_meeting(x +(_xDirection), y, obj_bloco)

if (!_na_parede)
{
	if(_intervalo)
	{
		image_xscale = -1;	
	
	}
	else
	{
		image_xscale = 1	
	}
}

//Trocar de modo
//if (keyboard_check_pressed(ord("G")))
//{
//	if (instance_exists(obj_clone_player))
//	{
//		global.player1 = !global.player1;
//	}
	
//}

//Trocar modo de tiro
//if (keyboard_check_released(ord("E")))
//{
//	global.tiro_clone = !global.tiro_clone;
		
//}



//Destruindo o clone
if (keyboard_check_pressed(ord("T")))
{
	if (instance_exists(obj_clone_player))
	{
		
		obj_clone_player.me_destruo = true
		if (instance_exists(obj_arma_player))
		{
			if (!instance_exists(obj_clone_player))
			{
				obj_arma_player.ja_clonei_na_fase = false
				obj_arma_player.clonei = false
			}
			
			//global.tiro_clone = true
			
		}
		
	}
	
	
}

//Empurrando blocos
var _push_list = ds_list_create();

var _is_block_h = instance_place_list(x + velh, y, obj_caixa, _push_list, false);

if (_is_block_h and _no_chao){
	if (ds_list_size(_push_list) > 0){
		for(var i = 0; i < ds_list_size(_push_list); i++){
			var block = _push_list[|i]; //ds_list_find_value
			with(block){
				if (!place_meeting(x + other.velh, y, obj_bloco and velh != 0)){
				x += other.velh;
				}
				
			}
		}
		
	}
		
}

ds_list_destroy(_push_list)

var _layer_hspeed = lerp(velh, 0.3, 0.1)

layer_hspeed("bg_perto", velh / 10)

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

show_debug_message(qtd_pulos)