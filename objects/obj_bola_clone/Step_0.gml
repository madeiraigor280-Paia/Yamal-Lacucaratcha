var _no_chao = place_meeting(x, y + 1, obj_chao)
if (_no_chao)
{
	show_message("kkk")	
}

if (melhoria == false)
{
	

		
	
		if (global.player1 && clonei == false)
		{
		
			
				if (cooldown <= 0 && ja_clonei_na_fase == false)
			{
			
			
		var _no_chao = place_meeting(x, y + 1, obj_chao)
	//var _na_parede = place_meeting(x +(image_xscale) + 10, y, obj_bloco)
		var _na_parede = place_meeting(x - 15, y, obj_chao)
		var _no_teto = place_meeting(x, y - 25, obj_chao)
	
	
		if (_no_chao or _na_parede or _no_teto)
		{
			show_message("kkk")	
		}
		
		if (_no_chao or _na_parede or _no_teto && !criei_clone)
		{
			
			
	
		
	
			if (!mudei)
			{
				muda_sprite(spr_player_clone_enter)
				mudei = true
			}	
	
	
		//if (sprite_index == spr_player_enter)
		//{
	
		
		//	if (image_index >= image_number-1)
		//	{
			
		//		instance_create_layer(x, y, layer, obj_clone_player)
		//		criei_clone = true
		//		instance_destroy()
		//	}
		//}
	}


				
				
				
					cooldown = 400
				}
			
			
			
				if (instance_exists(obj_clone_player))
				{
					clonei = true
				
				
				}
		}
	
	
	
	

}

show_debug_message(criei_clone)