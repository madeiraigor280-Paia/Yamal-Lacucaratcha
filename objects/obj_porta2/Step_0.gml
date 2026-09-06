var _player = instance_place(x, y, obj_player)
var _clone = instance_place(x, y, obj_clone_player)

switch(estado)
{
	case "ativada":
	{
		
	
	
			if (instance_exists(_player or _clone))
			{
				//var _dir
					with(_player)
					{
							//Quando sair da room
				if (move_chekpoint == false)
				{
					velv = 0;
					velh = 0;
	
					muda_sprite(spr_player_die);
					move_chekpoint = true;
					screenshake(5)
					aumenta_radiacao(15)
	
	
				}	
				
			}
			with (_clone)
			{
						if (move_chekpoint == false)
				{
					velv = 0;
					velh = 0;
	
					muda_sprite(spr_player_die);
					move_chekpoint = true;
					screenshake(5)
					aumenta_radiacao(15)
	
	
				}
				
			}
	
				
	
	
		}

	
	
			
		}
			break;
			
			
		case "desligando":
		{
			muda_sprite(spr_door_desativando)		
		}
		
		break;
		
	case "desligada":
	{
		
		
		
	}
	break;
}
		
	
	
	
			
	

