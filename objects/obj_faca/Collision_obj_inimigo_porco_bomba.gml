var _porco = instance_place(x, y, obj_inimigo_porco_bomba)
if (_porco.morto == false)
if (_porco)
{
	_porco.muda_sprite(spr_inimigo_porco_dano)
	_porco.dano = true;
	
	if (_porco.sprite_index == spr_inimigo_porco_dano)
		{
			_porco.velh = 0;
			_porco.morto = true
			
			
		}
			
	




	
	
}

if (_porco.morto == false)
{
	instance_destroy()
}