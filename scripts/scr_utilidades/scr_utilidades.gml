global.morangos = 0

function muda_sprite(_sprite){
	if (sprite_index != _sprite)
	{
		sprite_index = _sprite
		image_index = 0
		
		
	}
	
}
	
	
function sendo_destruido(_particula = obj_explosao_tiro)
{
	instance_destroy();
	
	//Criando a minha particula
	var _part = instance_create_layer(x, y, "Particulas", _particula);
	_part.image_angle = random(359)
	
}