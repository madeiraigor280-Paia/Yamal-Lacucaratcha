global.player1 = true;

global.tiro_clone = true;

global.radiacao = 0


global.mostra_hud = true

global.timer = 0

global.modo = false;

function brilho_efect(xscl,yscl,cor,alp)
{
	draw_self()
	draw_sprite_ext(spr_brilho,0,x,y,xscl,yscl,0,cor,alp)
	
}
global.morreu = false

function morre_player()
{
	global.morangos = 0;
	global.player1 = true;
	estado = "dead";
	
	global.morreu = true;
	if (instance_exists(obj_player))
	{
		obj_player.estado = "dead";	
	}
	
}

function reinicia_jogo()
{
	
	global.vida = global.max_vida
	
	game_restart()	
	
	
}