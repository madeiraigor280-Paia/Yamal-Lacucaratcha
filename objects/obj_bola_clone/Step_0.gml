// se por algum motivo sair da room se destrói

if(x<=-20 or x>= room_width + sprite_width) instance_destroy();
if(y<=-20 or  y>=room_height + sprite_height) instance_destroy();

var _no_chao = place_meeting(x, y + 1, obj_chao)
var _na_parede1 = place_meeting(x +(image_xscale) + 10, y, obj_chao)

var _na_parede = place_meeting(x - 15, y, obj_chao)
var _no_teto = place_meeting(x, y - 25, obj_chao)

if (instance_exists(obj_clone_jonas))
{
			
		ja_clonei_na_fase = true
			
		clonei = true
			//instance_destroy()
			exit;
		
		


		
}
show_debug_message(speed)

if (global.player1 && clonei == false)
{
	
	
	if (_no_chao or _na_parede1 or _na_parede or _no_teto && !criei_clone)
	{
		speed = 0
		if (!instance_exists(obj_clone_jonas) && !ja_clonei_na_fase)
		{
			instance_create_layer(x, y, "Player", obj_clone_jonas)	
			screenshake(20)
			
			instance_destroy()
			
		}
		else
		{
			instance_destroy()	
		}
		
		
		
	}
	
	
}




if (_na_parede1)
{
	//show_message("kkk")	
}

