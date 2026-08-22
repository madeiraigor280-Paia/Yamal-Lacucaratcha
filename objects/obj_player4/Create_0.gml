// Inherit the parent event
event_inherited();



velocidade = 4;
gravidade = .3;


forca_pulo = -7;

qtd_pulos = 0;
max_pulos = 2;

sprite_run = spr_frog_run
sprite_idle = spr_frog_idle
sprite_wall_jump = spr_frog_wall_jump
sprite_jump = spr_frog_jump
sprite_double_jump = spr_frog_double_jump
sprite_fall = spr_frog_fall;


move_chekpoint = false;

function input_player()
{	
	var _left, _right, _jump, _xDirection;
	
	_left = keyboard_check(ord("A"))
	_right = keyboard_check(ord("D"))
	
	
	_jump = keyboard_check_pressed(vk_space)
	
	_xDirection = _right - _left;
	
	var _velh = (_right - _left) * velocidade;
	
	var _no_chao = place_meeting(x, y + 1, obj_bloco)
	var _na_parede = place_meeting(x +(_xDirection), y, obj_bloco)
	
	if (_xDirection != 0)
	{
		image_xscale = 	_xDirection;
		
	}
	
	if (_no_chao)
	{
		if (_xDirection != 0)
		{
			sprite_index = sprite_run
			
		}
		else
		{
			sprite_index = sprite_idle	
			
			
					if distance_to_object(obj_par_npcs) <= 10 {

		     if global.tecla and global.dialogo == false {	
			var _npc = instance_nearest(x, y, obj_par_npcs);
			var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
			_dialogo.npc_nome = _npc.nome;
		
					}
	
	
				}
			
			
			
		}
	}
	else if (_na_parede)
	{
		sprite_index = sprite_wall_jump
		qtd_pulos = max_pulos;
		
	}
	else{
		
		if (qtd_pulos == (max_pulos-1))
		{
			sprite_index = sprite_jump	
			
		}
		else
		{
			sprite_index = sprite_double_jump;
		}
		
		if (velv > 0)
		{
			var _inimigo = instance_place(x, y, obj_inimigo_pai);
			
			if (_inimigo)
			{
				_inimigo.levou_dano = true;
				velv = forca_pulo;
				
			}
			
			sprite_index = sprite_fall
			
		}
	}
	
	if (_no_chao)
	{
		qtd_pulos = max_pulos;
		if (_jump)
		{
			velv = forca_pulo	
			qtd_pulos--;
		}
		
	}
	else
	{
		if (_jump && (qtd_pulos == 1 || qtd_pulos == 2))
		{
			qtd_pulos = 1;
			velv = forca_pulo;
			qtd_pulos--;		
		}
		//velv += gravidade	
		
		//Códico do wall jump
		if (_na_parede)
		{
			velv = 1;
			qtd_pulos = max_pulos;
			
			if (_jump)
			{
				velv = forca_pulo;
				velh = (10 * _xDirection) * -1;
			}
			
		}
		
	}
	
	velh = lerp(velh, _velh, .1)
	
}