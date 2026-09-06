var _player = instance_place(x, y - 3, obj_player)

if (_player)
{
	muda_sprite(spr_mola_jump)
	flag_colisao = true;

	
	_player.velv = -forca_mola
	_player.qtd_pulos = _player.max_pulos;
	_player.qtd_pulos--;
}

if (flag_colisao && image_index >= image_number-1)
{
	muda_sprite(spr_mola)
	flag_colisao = false
	
}

var _player2 = instance_place(x, y - 3, obj_clone_player)

if (_player2)
{
	muda_sprite(spr_mola_jump)
	flag_colisao = true;

	
	_player2.velv = -forca_mola
	_player2.qtd_pulos = _player2.max_pulos;
	_player2.qtd_pulos--;
}

if (flag_colisao && image_index >= image_number-1)
{
	muda_sprite(spr_mola)
	flag_colisao = false
	
}
