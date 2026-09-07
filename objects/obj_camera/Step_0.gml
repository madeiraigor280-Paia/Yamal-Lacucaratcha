if (instance_exists(obj_player))
{
	if (global.player1)
	{
		var _target = obj_player;
		//show_message("kk")
	}
	else
	{
		if (instance_exists(obj_clone_jonas))
		{
			var _target = obj_clone_jonas;
		}
		else
		{
			var _target = obj_player;
		}
	}
	
	x = lerp(x, _target.x, 0.75);
	y = lerp(y, _target.y, 0.75);
	
}

camera_set_view_border(view_camera[0], 290, 120)

//Efeitos da tela
if (flash_alpha >= 0.02 && posso_ativar)
{
	flash_alpha -= 0.1;
	
	
	
}

if (flash_alpha <= 0.02)
{
	posso_ativar = false;
	flash_alpha = 1;
	
}