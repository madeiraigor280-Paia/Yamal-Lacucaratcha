var _no_chao = place_meeting(x, y + 1, obj_chao)



//Coloquei aqui para contar a gravidade mesmo sem o modo
if (!_no_chao)
{
	velv += gravidade	
	
}


if (move_chekpoint)exit;

if (global.player1 == true) 
{
	
	image_blend = c_grey
	
	if (me_destruo == false)
	{
		muda_sprite(spr_frog_idle)
	}
	else
	{
		muda_sprite(spr_player_die)	
	}
	velh = 0;
	velv += gravidade;
	exit;
	
}
else
{
	image_blend = c_orange
	troquei = false
	


	
	
}




input_player()

var _dire = point_direction(x, y, mouse_x, mouse_y)



//Se nossa direção for igual a 90 ou 270, então retorna verdadeiro
var _intervalo = _dire == clamp(_dire, 90, 270)
var _left, _right, _jump, _xDirection;
	
_left = keyboard_check(ord("A"))
_right = keyboard_check(ord("D"))
	
var _xDirection = _right - _left;
var _na_parede = place_meeting(x +(_xDirection), y, obj_chao)

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

//if (keyboard_check_pressed(ord("G")) && troquei == false)
//{
	
//	global.player1 = !global.player1
//	troquei = true
	
	
//}

	//Trocar de modo
//if (keyboard_check_pressed(ord("G")))
//{
//	if (instance_exists(obj_player))
//	{
		
//		global.player1 = true
//	}
	
//}



//Empurrando blocos
//var _push_list = ds_list_create();

//var _is_block_h = instance_place_list(x + velh, y, obj_caixa, _push_list, false);

//if (_is_block_h){
//	if (ds_list_size(_push_list) > 0){
//		for(var i = 0; i < ds_list_size(_push_list); i++){
//			var block = _push_list[|i]; //ds_list_find_value
//			with(block){
//				if (!place_meeting(x + other.velh, y, obj_chao)){
//				x += other.velh;
//				}
				
//			}
//		}
		
//	}
		
//}

//ds_list_destroy(_push_list)


//layer_hspeed("bg_perto", velh / 10)

