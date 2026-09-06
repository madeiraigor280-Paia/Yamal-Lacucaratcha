if (pode_iniciar && me_criei == false)
{
	image_alpha++;
	if (image_alpha >= 1 )
	{
		muda_sprite(spr_portal_emerge)
		me_criei = true
		
	}
	
	//if (sprite_index == spr_portal_emerge)
	//{
		
	//	if (image_index >= image_number-1)
	//	{
			
	//		sprite_index = spr_portal_idle
			
	//	}
		
	//}
}


var _player = instance_place(x, y, obj_player);

var _clone = instance_place(x, y, obj_clone_jonas);

var _tecla = keyboard_check_pressed(ord("W"))

if (_player or _clone)
{
	faco_tecla = true
	if (pode_iniciar && sprite_index == spr_portal_idle)
	{
		
		if (keyboard_check_pressed(ord("W")))
		{
			
			muda_sprite(spr_portal_sumindo)
		
		
		
		}
	}
	
}
else
{
	faco_tecla = false	
	
}