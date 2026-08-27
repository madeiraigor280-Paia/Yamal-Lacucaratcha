switch(estado)
{
	case "entrando":
	{
		if cutscene = true and entrando > 0{
		vspeed = + 1
		cooldowncutscene = 10
		entrando--;
		
		image_xscale = 0.5
		image_yscale = 0.5
		
		sprite_index = spr_boss_pessi_idle
		
		
	
	}
	else
	{
		image_xscale = lerp(image_xscale, 1, 0.1)
		image_yscale = lerp(image_yscale, 1, 0.1)
		vspeed = 0;
		estado = "Walking";	
	}
	
	
	break;
	
	
	
	}
	case "Walking":
	{
		cooldownwalking--;
		
		
		sprite_index = spr_boss_pessi_idle
		if (!ja_andei)
		{
			
			ja_andei = true
			hspeed = choose(-8, 8)
			//ja_bati_na_parede--;
			
			
		}
		
	
	var _parede = place_meeting(x + hspeed, y, obj_chao);
	
	if (_parede)
	{
		hspeed = -hspeed
		
		//show_message("kkk")
		
	
	}
	
		if (cooldownwalking <= 0)
		{
			estado = "Roda_ataque";
			
		}
	}
	break;
	
	case "Roda_ataque":
	{
		if (estado != "Walking" and entrei_no_ataque == false)
		{
			//Vou para o ataque
			entrei_no_ataque = true;
			estado = "Atacando";
			
		}
		
		
	}
	break;
	case "Atacando":
	{
		hspeed = 0;
		//Variaveis de controle para atacar

		
		
		//Caso escolha a string, faça isso E não escolhi ainda
		if (ataques == "Laser")
		{
			
			hspeed = 0;
			muda_sprite(spr_boss_pessi_laser)
			atacando(spr_boss_pessi_laser, 16, 29, sprite_width , - sprite_height /2, 1, 1, "Taunt");
			
			//if (image_index >= image_number-1)
			//{
			//	estado = "Taunt";	
				
			//}
			
			
			
			
			
			
		}
		else if (ataques == "Bola")
		{
			muda_sprite(spr_boss_pessi_bola)
			//atacando(spr_boss_pessi_bola, 9, 14, sprite_width / 2, - sprite_height/3, 2, 2, "Taunt");
			atacando(spr_boss_pessi_bola, 9, 12, sprite_width , - sprite_height /2, 1, 1, "Taunt");
			//if (image_index >= image_number-1)
			//{
			//	estado = "Taunt";
				
			//}
			
			
			
			
		}
		else if (ataques == "Summonar")
		{
			muda_sprite(spr_boss_pessi_summon)
			atacando(spr_boss_pessi_summon, 2, 4, sprite_width / 2, - sprite_height/3, 2, 2, "Taunt");
			//if (image_index >= image_number-1)
			//{
				
			//	estado = "Taunt";
			//}
			
			
			
		}
	}
	break;
	
	
	case "Taunt":
	{
		
		sprite_index = spr_boss_pessi_idle;
		
		//Paro um pouco ele
		hspeed = 0;
		//Zero as variaveis
		entrei_no_ataque = false;
		//Não andei
		ja_andei = false;
		cooldownwalking = 500;
		
		//if (x >= room_width/2)
		//{
		//	vspeed = lerp(vspeed, room_width /2, 3)	
			
		//}
		
		
		
		
	}
	
	break;
}
cooldowncutscene--;
ja_bati_na_parede--;