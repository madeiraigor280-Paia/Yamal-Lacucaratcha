var _player = instance_place(x, y, obj_player)

var _no_chao = place_meeting(x, y + 1, obj_bloco)

switch(estado)
{
	case "parado":
	{


		if (!_no_chao)
		{
	
			velv += gravidade	
	
		}
	
		if (instance_exists(_player))
		{
			//var _dir
	
				if (_player.velh != 0)
				{
					//velh += velh.obj_player
				}
	
	
		}
		var _espinho = instance_place(x, y - 1, obj_spike_ball)
	
		if (_espinho && nao_quebrei == false)
		{
			estado = "hit"
		}
		
		
	
	
	
			
		}
			break;
			
			
		case "hit":
		{
		if  (estado == "hit" && nao_quebrei == false)
			{
				muda_sprite(spr_box_hit)
			}
		}	
		break;
		
	case "break":
	{
		if (criei_item == false)
		{
			
		
			
			instance_create_layer(x, y - 20, layer, obj_key)
			criei_item = true
		}
		
		
	}
	break;
}
		
	
	
	
			
	


//if (estado == "break")
//	{
				
//		show_message("Kkkk")
//		var _item = obj_mola
		
//		instance_create_layer(x, y - 20, layer, _item)
//	}
	
//}