function Script1(){

}

randomize();

global.transicao = false;
global.max_vida  = 5;
global.vida		 = global.max_vida;


function mudando_sprite(_sprite)
{
	image_speed = 1;
	//Checar se eu estou com a sprite certa	
	if (sprite_index != _sprite)
	{
		sprite_index = _sprite;
		image_index = 0;
	}
}


function transicao_simples(_room)
{
	var _transicao = instance_create_layer(0, 0, layer, obj_transicao)
	_transicao.rm_destino = _room;
	global.player1 = true;

	global.tiro_clone = true;
}

function screenshake(_shake)
{
	var obj_shake = instance_create_layer(0, 0, layer, obj_screenshake)
	obj_shake.shake = _shake
	
}
