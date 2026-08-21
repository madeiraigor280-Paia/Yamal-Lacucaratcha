var _player = instance_place(x, y, obj_player)

if place_meeting(x, y, obj_player){
	
	instance_destroy()
	
	_player.dano = true
}

