//Se o player ou clone me pegou, me destruo e dou a chave

var _player = instance_place(x, y, obj_player)

var _clone = instance_place(x, y, obj_clone_player)

if (_player or _clone)
{
	morrendo();
	
}
