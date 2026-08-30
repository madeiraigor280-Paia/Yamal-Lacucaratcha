var _player = instance_place(x, y, obj_player);
var _clone = instance_place(x, y, obj_clone_jonas);

//Se eu sou o botão do player
if (sou_player)
{
	//Se o player está em mim
	if (_player)
	{
		//Se não fui até o final da animação
		if (image_index <= image_number-1)
		{
			image_speed = 1;
		
		}
		else //Se terminei, então paro
		{
			image_speed = 0;	
		}
		//Então entrei
		entrei = true
		posso_ativar_player = true
	
	}
	else
	{
		posso_ativar_player = false;
	
	}


	//if (_player)
	//{
	//	vel = 1
	//	entrei = true
	//	posso_ativar_player = true
	
	//}
	//else
	//{
	//	posso_ativar_player = false		
	
	//}
	//Desfazendo a a animação
	if (entrei == true && !_player)
	{
		if (image_index >= 1)
		{
			image_speed = -1;
		}
		else
		{
			image_speed = 0;
		
		}
	
	}


	if (image_index <= 0.5 && image_speed < 0)
	{
	
		image_index = 0
		entrei = false
		vel = 0
	
	}
}


//Se sou do clone
if (sou_clone)
{
	if (_clone)
	{
		if (image_index <= image_number-1)
		{
			image_speed = 1;
		
		}
		else
		{
			image_speed = 0;	
		}
		entrei_clone = true;
		posso_ativar_clone = true;
	
	}
	else
	{
		posso_ativar_clone = false;
	
	}


	//if (_player)
	//{
	//	vel = 1
	//	entrei = true
	//	posso_ativar_player = true
	
	//}
	//else
	//{
	//	posso_ativar_player = false		
	
	//}
	//Desfazendo a a animação
	if (entrei_clone == true && !_clone)
	{
		if (image_index >= 1)
		{
			image_speed = -1;
		}
		else
		{
			image_speed = 0;
		
		}
	
	}


	if (image_index <= 0.5 && image_speed < 0)
	{
	
		image_index = 0
		entrei_clone = false
		vel = 0
	
	}
}

if (posso_ativar_player && posso_ativar_clone && !ativei_porta)
{
	if (instance_exists(obj_porta1))
	{
		obj_porta1.estado = "desligando";
		ativei_porta = true
	}
	
}