draw_self();
draw_self();


if estado == "dead" exit;
{
	
	if global.bola > 0{
		var dir = point_direction(x, y, mouse_x, mouse_y);
		var xx = lengthdir_x(20, dir);
		var yy = lengthdir_y(20, dir);
		
			if (global.player1)
			{
				draw_sprite_ext(spr_bola, 0, x + xx, y - 8 + yy, 1, 1, dir, c_white, 1)
	
		
					var _mouse_x = mouse_x;
					var _mouse_y = mouse_y;
					//var _chao = place_meeting(x - xx, y - 8 + yy, obj_chao)
					//var _chao = place_meeting(dir, dir, obj_chao)
					//var _chao = place_meeting(mouse_x + xx + 3, mouse_y + yy, obj_chao)
					var _chao = place_meeting(x + xx, y + yy, obj_chao)
					if mouse_check_button_pressed(mb_left) and !_chao{
			
						var _bola_clone = obj_bola_clone;
			
						if (global.modo)
						{
					
					
							var inst = instance_create_layer(x + xx, y - 8 + yy, "Projeteis", obj_particula)
						}
						else
						{
							var inst = instance_create_layer(x + xx, y - 8 + yy, "Projeteis", obj_bola_clone)
						}
						inst.melhoria = false;
						inst.direction = dir;
						inst.image_angle = dir;
						inst.speed = 8
						faca_cargas -= 1;
					}
	
					if faca_cargas <= 0{
						faca = false	
		
					}
				}
	}
	
}