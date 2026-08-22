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

