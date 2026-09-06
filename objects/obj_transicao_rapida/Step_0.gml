var _player = instance_place(x - obj_player.image_xscale * 5, y, obj_player)
var _clone = instance_place(x, y, obj_clone_jonas);

if (_player or _clone)
{
	transicao_rapida(destino);	
	
}