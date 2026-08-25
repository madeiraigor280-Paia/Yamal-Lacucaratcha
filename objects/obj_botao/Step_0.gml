//Checando se o mouse clicou
var _mouse_click = mouse_check_button_pressed(mb_left)

//Checando se o mouse está em cima de mim (eu, o botão!)
//Vai ver se a posição de alguma coisa está batendo em alguma colisão
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id)

//Quando o mouse estiver em cima de mim, eu mudo a minha escala
if (_mouse_sobre)
{
	//image_blend = cor2
	
	//Deixando ele maior quando o mouse entrar nele
	//Ajustando a escala x
	tween(id, "image_xscale", escala_x * escala_sobre, tween_animation.bounce, 30);

	//Ajustando a escala y
	tween(id, "image_yscale", escala_y * escala_sobre, tween_animation.bounce, 30);

	//Ajustando a escala do texto
	tween(id, "escala_texto", 3, tween_animation.bounce, 30);
	
	//Ajustando o valor da cor
	tween(id, "valor_cor", 1, tween_animation.bounce, 30)
	tween(id, "image_angle", 0, tween_animation.back, 30)
	
	//Checando se a pessoa clicou em mim
	if (_mouse_click)
	{
		//Se ele acertou
		if (resposta_certa)
		{
			_novo_ang = image_angle + 90;
			//Aumentando ainda mais as escalas
			tween(id, "image_xscale", escala_x * 3, tween_animation.back, 10, )
			tween(id, "image_yscale", escala_y * 3, tween_animation.back, 10)
			tween(id, "escala_texto", escala_y * 10, tween_animation.back, 10)
			
		
			tween(id, "valor_cor", 1.2, tween_animation.back, 10)
			
			tween(id, "image_angle", _novo_ang, tween_animation.back, 10)
			screenshake(10)
			
			//show_message("Você acertou!!")
		}
		else
		{
			_novo_ang = image_angle - 90;
			//Aumentando ainda mais as escalas
			tween(id, "image_xscale", escala_x * 100, tween_animation.back, 3000, )
			tween(id, "image_yscale", escala_y * 100, tween_animation.back,3080)
			tween(id, "escala_texto", escala_y * 20, tween_animation.back, 180)
			tween(id, "image_angle", _novo_ang, tween_animation.back, 10)
			
			screenshake(20)
			
			tween(id, "valor_cor", cor_acerto, tween_animation.bounce_in, 20)
			//Tocando o som variando a altura
			//Tocando o som se eu errei
			var _pitch = random_range(0.7, 1.3);
			
			
			audio_play_sound(snd_resposta_errada, 0, 0, , , _pitch)
			
			//show_message("Você errou! Burro!")
			
			global.vida--;
			
			
			
			
			
			
			
			
		}
		//Eu rodo algum códico que faz alguma coisa
		
		
	}
	
	
}
else //Se o mouse não está em cima de mim, ele esta fora de mim
{
	
	//Ajustando a escala x ao normal
	tween(id, "image_xscale", escala_x, tween_animation.elastic, 60);

	//Ajustando a escala y para voltar ao normal
	tween(id, "image_yscale", escala_y, tween_animation.elastic, 60);

	//Ajustando a escala do texto
	tween(id, "escala_texto", 1, tween_animation.bounce, 30);

	//Voltando ao valor da cor a 0
	tween(id, "valor_cor", 0, tween_animation.elastic, 30)
	tween(id, "image_angle", 0, tween_animation.back, 10)
	
	//image_blend = cor1
}

//Alterando a cor do botão
//Cor1
//Cor2
//Qual cor ele vai estar ?
image_blend = merge_colour(cor1, cor2, valor_cor)