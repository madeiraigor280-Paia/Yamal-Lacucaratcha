// Inherit the parent event
event_inherited();

show_debug_message(vida_atual);

var chao = place_meeting(x, y + 1, obj_chao);



if (!chao)
{
    velv += global.GRAVIDADE * massa;
}



//State machine

switch(estado)
{
	case "parado":
	{
		
		//Criar a lógica do estado parado
		//Ajustando a sprite dele
		if (sprite_index != spr_boss_idle)
		{
			sprite_index = spr_boss_idle;
			image_index = 0;
		}
		
		
		//Codições para trocar de estado
		//Checando se player esta na tela
		if (instance_exists(obj_player))
		{
			var _dist = point_distance(x, y, obj_player.x, obj_player.y);
			//Se o player estiver muito perto, eu vou atras dele
			if (_dist < 300)
			{
				estado = "movendo";	
				
			}
		
		}
		break;	
	}
	
	case "movendo":
	{
		//Criar a lógica do estado movendo
		//É nesse estado que ele vai caçar o player
		if (sprite_index != spr_boss_walk)
		{
			sprite_index = spr_boss_walk;
			image_index = 0;
		}
		
		//Perseguir o player
		if (instance_exists(obj_player))
		{
			//Minha distância para o player
			var _dist = point_distance(x, y, obj_player.x, obj_player.y);
			var _dir = point_direction(x, y, obj_player.x, obj_player.y);
			
			if (_dist > 40)
			
			{
			//Definindo a minha velocidade
			velh = lengthdir_x(max_velh, _dir);
			}
			else
			{
				//Chegou muito perto, ele para e me ataca
				velh = 0;
				estado = "attack";
				//Escolhendo o ataque
				ataque = irandom(2);
				posso = true;
			dano = noone;
				
			}
		
		}
		
		
		break;	
	}
		
		case "attack":
		{
			//Criando o subtate do ataque do boss
			switch(ataque)
			{
				//Primeiro ataque do boss
				case 0:
					atacando(spr_boss_ataque1, 2, 6, sprite_width / 2, - sprite_height/3, 2, 2, "taunt");
					break;
					
			
			//Segundo ataque
				case 1:
					atacando(spr_boss_ataque2, 2, 4, sprite_width / 2.5, - sprite_height/4, 3, 1, "taunt");
					break;
				//Terceiro ataque do boss
				case 2:
				atacando(spr_boss_ataque3, 4, 7, 0, - sprite_height/4, 6, 1, "taunt");
				
				
				break;
		}
			break;
		}
		
		case "hit":
		{
			leva_dano(spr_boss_hurt, 2);
			
			break;
		}
		
		case "taunt":
		{
			taunt_timer--;
			//Definindo a sprite
			if (sprite_index != spr_boss_taunt)
			{
					sprite_index = spr_boss_taunt;
					image_index = 0;
				
			}
			
			//Condição para sair do estado
			//Player atacou
			if (taunt_timer < 0)
			{
				taunt_timer = taunt_delay;
				estado = "parado";
				
			}
			
			break;
			
			
		}
		
		case "dead":
		{
			morrendo(spr_boss_dead);
			
			//Adicionando um screenshake
			screenshake(4);
			
			break;
		}
	
	
	
}


if (estado == "attack") exit;
if (!levei_dano)
{
	var _tiro_player = instance_place(x, y, obj_particula)	
	
	if (_tiro_player and estado != "dead")
	{
		if (dano != noone && instance_exists(dano))
		{
			instance_destroy(dano);
			dano = noone;
		}
		
		estado = "hit";
		levei_dano = true;
		alarm[0] = 120;
		vida_atual -= 1;
		instance_destroy(_tiro_player)
	}
	
	
}

//Se fui criado pelo sensor
if (instance_exists(obj_chain_door) && fui_criado_sensor)
{
	if (estado == "dead")
	{
		obj_chain_door.posso_destruir = true;
		
	}
}
