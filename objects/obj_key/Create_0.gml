morrendo = function()
{
	instance_destroy();
	
	var _part = instance_create_layer(x, y, layer, obj_explosao_tiro);
	
	if (instance_exists(obj_porta1))
	{
		obj_porta1.tenho_chave = true;	
	}
	
}