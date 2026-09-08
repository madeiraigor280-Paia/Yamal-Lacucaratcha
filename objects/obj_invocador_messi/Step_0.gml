if keyboard_check(ord("Y")) && !global.dialogo{
	if (!spawnei_boss)
	{
		spawnei_boss = true
		if (instance_exists(obj_camera))
		{
			obj_camera.posso_ativar = true;	
		}
		instance_create_depth(512, -128, -1, obj_boss2)
		instance_create_depth(x,y,-1, obj_vidaboss)
		
	}
	muda_sprite(spr_invocador_spawn_2);
	
}

minha_voz(snd_npc5)

var _player = instance_place(x, y, obj_player)

//var _clone = instance_place(x, y, obj_clone_player)

if (_player)
{
	faco_tecla = true
	
}
else
{
	faco_tecla = false	
	
}

if (spawnei_boss && !global.dialogo)
{
	if (sprite_index == spr_invocador_spawn_2)
	{
		if (image_index >= image_number-1)
		{
			
			muda_sprite(spr_invocador_sumindo);
		}
	}
	
	if (sprite_index == spr_invocador_sumindo)
	{
		image_alpha -= 0.1;
		
		if (image_index >= image_number-1 && image_alpha <= 0.2)
		{
			
			instance_destroy();	
			
		}
		
	}
	
}
