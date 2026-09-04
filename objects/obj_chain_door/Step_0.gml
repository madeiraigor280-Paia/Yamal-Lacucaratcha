//Se eu fui ativado
if (fui_ativo)
{
	//Apareço
	image_alpha = 1;
	
	var _chao = place_meeting(x, y + 1, obj_chao)
	
	//Se ainda não cresci o suficiente até o chão
	if (!_chao)
	{
		//Então eu cresço
		if (timer_chao >= 0)
		{
			image_yscale += 0.5;
			
		}
	}
	else //Se eu bati no chão
	{
		//E ainda não fiz o screenshake
		if (bati == false)
		{
			screenshake(20)
			
			//Faço ele e paro
			bati = true;
			
		}
		
	}
	timer_chao--;
	
	
	
	//Se fiz o que precisei
	if (posso_destruir)
	{
		image_alpha -= 0.1;
		image_yscale = lerp(image_yscale, 0, .1)
		
		if (image_alpha <= 0.2 && image_yscale <= 0.2)
		{
			instance_destroy()	
			
		}
		
	}
}

