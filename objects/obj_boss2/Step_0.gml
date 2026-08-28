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
		
		sprite_index = spr_boss_pessi_idle;
		
		
		
		
	
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
		tempo_taunt = 250;
		
		sprite_index = spr_boss_pessi_idle;
		if (!ja_andei)
		{
			
			ja_andei = true
			hspeed = choose(-4, 4)
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
			//Resetando o a variavel
			ataques = choose("Laser", "Bola", "Summonar")
			//Vou para o ataque
			entrei_no_ataque = true;
			estado = "Atacando";
			
		}
		
		
	}
	break;
	case "Atacando":
	{
		var _escolha = choose("Laser", "Bola", "Summonar")
		
		hspeed = 0;
		vspeed = 0;
		//Variaveis de controle para atacar

		
		//show_message("kkk")
		//Caso escolha a string, faça isso E não escolhi ainda
		if (ataques == "Laser")
		{
			
			hspeed = 0;
			//
			//uda_sprite(spr_boss_pessi_laser)
			atacando(spr_boss_pessi_laser_lucca, 16, 28, - 30, -50, xscale_dano * 2, xscale_dano * 10, "Taunt");
			escolhi = true
			//if (image_index >= image_number-1)
			//{
			//	estado = "Taunt";	
				
			//}
			
			
			
			
			
			
		}
		else if (ataques == "Bola")
		{
			muda_sprite(spr_boss_pessi_bola)
			//atacando(spr_boss_pessi_bola, 9, 14, sprite_width / 2, - sprite_height/3, 2, 2, "Taunt");
			
			if (!criei_bolas and image_index >= 10)
			{
				cria_bolas();
				
				criei_bolas = true;
				
			}
			atacando(spr_boss_pessi_bola, 10, 12, -59 , -sprite_width, xscale_dano_largura * 4.5, xscale_dano * 5, "Taunt");
			
			
			//if (image_index >= image_number-1)
			//{
			//	estado = "Taunt";
				
			//}
			
			
			
			
		}
		else if (ataques == "Summonar")
		{
			muda_sprite(spr_boss_pessi_summon)
			atacando(spr_boss_pessi_summon, 2, 4, -59 , -sprite_width + 20, xscale_dano_largura * 4.5, xscale_dano * 5, "Taunt");
			escolhi = true
			
			crio_naves();
			//if (image_index >= image_number-1)
			//{
				
			//	estado = "Taunt";
			//}
			
			
			
		}
	}
	break;
	
	
	case "Taunt":
	{
		ataques = choose("Laser", "Bola", "Summonar");
		tempo_taunt--;
		sprite_index = spr_boss_pessi_idle;
		criei_bolas = false;
		escolhi = false
		//Paro um pouco ele
		hspeed = 0;
		//Zero as variaveis
		entrei_no_ataque = false;
		//Não andei
		ja_andei = false;
		cooldownwalking = 350;
		posso = true;
		criei_naves = false;
		//if (x >= room_width/2)
		//{
		//	vspeed = lerp(vspeed, room_width /2, 3)	
			
		//}
		
		
		
		if (tempo_taunt <= 0)
		{
			estado = "Walking";	
			
		}
		
	}
	
	break;
	
	case "Dead":
	{
		hspeed = 0;
		alpha = 0;
		if (vida_atual < 0)
		{
			muda_sprite(spr_boss_pessi_dead);
			
			if (image_index >= image_number-1)
			{
				instance_destroy();	
			}
			
		}
		
	}
	
		break;
}
cooldowncutscene--;
ja_bati_na_parede--;

if (estado == "Dead") exit;
leva_dano(spr_boss_pessi_hit);



//if (keyboard_check_pressed(ord("E")))
//{
//	estado	= "Atacando";
//	ataques = choose("Laser", "Bola", "Summonar");
	
	
//}