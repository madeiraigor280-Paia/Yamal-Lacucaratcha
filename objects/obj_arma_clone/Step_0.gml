
if (instance_exists(obj_clone_player))
{
	
	image_alpha = 1
	x = obj_clone_player.x;
	y = obj_clone_player.y;
	
	
	
}
else
{
	image_alpha = 0
	
}

if (global.player1 == true) exit;


var _dire = point_direction(x, y, mouse_x, mouse_y)

image_angle = _dire

//Se nossa direção for igual a 90 ou 270, então retorna verdadeiro
var _intervalo = _dire == clamp(_dire, 90, 270)

if(_intervalo)
{
	image_yscale = -1;	
	
}
else
{
	image_yscale = 1	
}

//Checando botão para atirar
var _click = mouse_check_button_pressed(mb_left)

if (_click)
{
	var _xx = x + lengthdir_x(30, _dire)
	var _yy = y + lengthdir_y(30, _dire)
	
	
	
	
		if (cooldown <= 0)
		{
			var _tiro = instance_create_layer(_xx, _yy, "Instances", obj_tiro_1)
			_tiro.direction = _dire
			cooldown = 50
		}

	
	
	
	
	
	
	
}

cooldown--;
