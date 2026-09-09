var _player = instance_place(x, y, obj_player);
var _clone = instance_place(x, y, obj_clone_jonas);

if (_player or _clone)
{
	ativei = true;
	
	
}

if (ativei)
{
	if (instance_exists(obj_camera))
	{
		obj_camera.posso_ativar = true;	
	}
	var _boss = instance_create_layer(x + sprite_width / 2, y - 10, layer, obj_boss)
	_boss.vida_max = 5 * global.dificuldade;
	_boss.vida_atual = 5 * global.dificuldade;
	_boss.fui_criado_sensor = true;
	
	if instance_exists(obj_chain_door)
	{
		obj_chain_door.fui_ativo = true;	
		
	}
	
	instance_destroy();
	
}