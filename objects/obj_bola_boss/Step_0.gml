

var _no_chao = place_meeting(x, y + velv, obj_chao)



if (quicada >= max_quicada)
{
	image_alpha -= 0.1;
	posso_dar_quicar = false;
	if (image_alpha <= 0.2)
	{
		instance_destroy();
	}
	
}
if (posso_dar_quicar == false) exit;

dou_dano();
//Coloquei aqui para contar a gravidade mesmo sem o modo
if (!_no_chao)
{
			velv += grav	
	
}
else
{
	velv += -vel_jump
	quicada++;
	
}



