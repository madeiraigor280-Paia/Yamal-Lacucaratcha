estado = "Fechado";

abro = false;

ja_abri = false;
criei_chave = false

image_speed = 0;

clique = keyboard_check_pressed(ord("G"))

faco_tecla = false

ja_criei_audio = false
maquina_de_estado = function()
{
	switch(estado)
	{
		case "Fechado":
		{
			
			var _player = instance_place(x, y, obj_player)
			var _clone = instance_place(x, y, obj_clone_jonas)
			
			if (_player or _clone)
			{
				//Se apertei E
				if (keyboard_check_pressed(ord("G")))
				{
					
					if (!ja_criei_audio)
					{
						audio_play_sound(snd_bau, 1, 0);
						ja_criei_audio = true;
					}
					if (!ja_abri)
					{
						image_speed = 1;
					
					
					
					}
				}
					
				
			}
			if (image_index >= image_number-1)
			{
					estado = "Aberto";	
						
			}
			
			
		}
		break;
		
		case "Aberto":
		{
			
			image_speed = 0;
			if (!criei_chave)
			{
				
				instance_create_layer(x, y - 10, "Particulas",  obj_key)
				criei_chave = true;
				
			}
			
		}
		break;
		
	
	
	
	
	
	}
	
	
	
}