var _player = instance_place(x, y, obj_player);
var _clone = instance_place(x, y, obj_clone_jonas);

//Se o player está em mim
if (_player or _clone && sou_saida)
{
	player_em_mim = true
	//Se apertei para ir para outra room
	if (keyboard_check_pressed(ord("W")))
	{
		transicao_simples(destino)	
		
	}
	
	
}
else
{
	player_em_mim = false;	
	
}