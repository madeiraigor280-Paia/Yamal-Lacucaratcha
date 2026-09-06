velh = dir * velc


if(instance_place(x+velh, y, obj_parede_plataforma)){
	
		dir*= -1
	
}

var colisao = place_meeting(x + velh, y, obj_player) or place_meeting(x, y-1, obj_player);
if (subo == false)
{
	if (colisao){
		with(obj_player){
			if (place_meeting(x+other.velh, y, obj_parede_plataforma)){
				x	+= other.velh;
			
			
			}
		
		
		}
	
	}
	x += velh;
}
else
{

	var colisao2 = place_meeting(x, y + velv, obj_player) or place_meeting(x, y-1, obj_player);
velv = dir * velc
	if (colisao2){
		with(obj_player){
			if (place_meeting(x, y + other.velv, obj_parede_plataforma)){
				y += other.velv
				//if (obj_player.velv > 0)
				//{
				//	y.obj_player = bbox_bottom + (y.obj_player - bbox_top);
		
				//}
				
			
			
			}
		
		}
	
	}
	if (instance_exists(obj_player))
	{
		
	}

}
	
	y += velv
	var _player = instance_place(x, y - 1, obj_player)

if (instance_exists(obj_player))
{
	if (_player)
	{
		_player.y = bbox_top - 1;
		
	}
	
}