if (room == rm_indo_espaco0)
{

	if (global.dificuldade >= 2)
	{
		var _x = 224;
		repeat(global.dificuldade)
		{
			
			
			
			instance_create_layer(_x, 160, layer, obj_inimigo_1);
			
			_x += 50;
			
		}
		
	}
	
	instance_destroy();
}

if (room == rm_indo_espaco2)
{
	if (global.dificuldade >= 2)
	{
		var _x = 288;
		if (!criei_inimigos)
		repeat(2)
		{
			
			
			
			instance_create_layer(_x, 96, layer, obj_inimigo_1);
			
			_x += 75;
			
			
			
		}
		criei_inimigos = true;
		
	}
	
	instance_destroy();

}
