

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

	
	
	tween(id, "image_angle", 0, tween_animation.back, 30)
	

		//Eu rodo algum códico que faz alguma coisa
		//Ajustando a escala do texto
	tween(id, "escala_texto", 3, tween_animation.bounce, 30);
		
	
	
	
}
else //Se o mouse não está em cima de mim, ele esta fora de mim
{
	
	//Ajustando a escala x ao normal
	tween(id, "image_xscale", escala_x, tween_animation.elastic, 60);

	//Ajustando a escala y para voltar ao normal
	tween(id, "image_yscale", escala_y, tween_animation.elastic, 60);

	

	
	tween(id, "escala_texto", 1, tween_animation.bounce, 30);
	tween(id, "image_angle", 0, tween_animation.back, 10)
	
	//image_blend = cor1
}
