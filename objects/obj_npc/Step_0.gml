minha_voz(snd_npc5)

var _player = instance_place(x, y, obj_player)

var _clone = instance_place(x, y, obj_clone_player)

if (_player or _clone)
{
	faco_tecla = true
	
}
else
{
	faco_tecla = false	
	
}
