if (pulo_hit)
{
	
	
	alarm[0] = room_speed / 8
	pulo_hit = false
	//pulo_hit = false
	
	dano = true
	
	timer_dano = tempo_dano;
	inv_timer  = inv_tempo;
	
	//Se o timer do dano é maior do que zero, eu diminuo ele
	if (timer_dano > 0) 
	{
		timer_dano--;	
	}
	else
	{
		//Acabou o meu timer do dano
		dano = false;
		posso_perder_vida = true;
	}
	
	if (inv_timer > 0)
	{
		inv_timer--;
		
		image_alpha = .5;
	}
	else
	{
		image_alpha = 1;
	}

	
	
	////Se o timer do dano é maior do que zero, eu diminuo ele
	//if (timer_dano > 0) 
	//{
	//	timer_dano--;	
	//}
	//else
	//{
	//	//Acabou o meu timer do dano
	//	dano = false;
	//	posso_perder_vida = true;
	//}
	
	//if (inv_timer > 0)
	//{
	//	inv_timer--;
		
	//	image_alpha = .5;
	//}
	//else
	//{
	//	image_alpha = 1;
	//}
	
}

//muda_sprite(spr_player_hit)

