if (global.radiacao >= 100)
{

	transicao_simples(global.sala_segura)
	global.radiacao = 0
	
}

if (keyboard_check_pressed(ord("H")))
{
	global.mostra_hud = !global.mostra_hud	
}

if (keyboard_check_pressed(ord("G")))
{
	if (instance_exists(obj_clone_player))
	{
		global.player1 = !global.player1;
	}
	
}