//Fazer não andar com dialogo
//Variavel de controle
if instance_exists(obj_dialogo){
	global.dialogo = true	
	
}


global.tecla = keyboard_check_pressed(ord("F"));
if (keyboard_check_pressed(vk_f11))
{
	//Pegando se a tela ta cheia
	var _full = window_get_fullscreen();
    
	//Deixando a tela cheia se ela não esta cheia
	//Ou restaurando a tela se ela esta cheia
	window_set_fullscreen(!_full);
}

