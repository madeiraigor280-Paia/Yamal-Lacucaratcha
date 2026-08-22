var _player = instance_place(x, y - 1, obj_player)

if (instance_exists(obj_player))
{
	if (_player)
	{
		_player.y = bbox_top - 1;
		
	}
	
}


var _player2 = instance_place(x, y - 1, obj_clone_player)

if (instance_exists(obj_clone_player))
{
	if (_player2)
	{
		_player2.y = bbox_top - 1;
		
	}
	
}

if (cresco_sozinho)
{
		image_yscale = lerp(image_yscale, cresco_ate, 0.1);
	
}
