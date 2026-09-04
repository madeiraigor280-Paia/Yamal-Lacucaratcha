var _player = instance_place(x, y, obj_player);
var _clone = instance_place(x, y, obj_clone_jonas);

if (_player or _clone)
{
	ativei = true;
	
	
}

if (ativei)
{
	var _boss = instance_create_layer(x + sprite_width / 2, y - 10, layer, obj_boss)
	_boss.vida_max = 10;
	_boss.vida_atual = 10;
	_boss.fui_criado_sensor = true;
	
	if instance_exists(obj_chain_door)
	{
		obj_chain_door.fui_ativo = true;	
		
	}
	
	instance_destroy();
	
}