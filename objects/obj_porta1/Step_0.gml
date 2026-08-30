var _player = instance_place(x - obj_player.image_xscale * 5, y, obj_player)
var _clone = instance_place(x, y, obj_clone_player)

switch(estado)
{
	case "ativada":
	{
		muda_sprite(spr_door_ativa);
	
			
		if (tenho_chave)
		{
			if (_player or _clone)
			{
				
				if (keyboard_check_pressed(ord("G")))
				{
					estado = "desligando";
					
				}
				
			}
			
		}
				
	
	
	}

	
	
			
		
			break;
			
			
		case "desligando":
		{
			muda_sprite(spr_door_desativando)
			mask_index = spr_colisao_porta;
		}
		
		break;
		
	case "desligada":
	{
		muda_sprite(spr_door_desligada);
		
		
	}
	break;
}
		
	

			
	

