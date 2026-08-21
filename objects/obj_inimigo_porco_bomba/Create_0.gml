// Inherit the parent event
event_inherited();

visao = 100
estado = "idle"; //Idle, run, pega, joga
vel = 1;

tomei_dano = false;

tempo_estado = room_speed * 5;
timer_estado = tempo_estado;

ver_o_player = function()
{
	var _vi_player = collision_line(x, y - 14, x + visao * image_xscale, y - 14, obj_player, false, true)
	
	if (_vi_player)
	{
		estado = "joga";
	}
	
}