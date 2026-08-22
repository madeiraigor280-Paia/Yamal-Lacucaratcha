//Códico onde controla a colisão

var _colx, _coly;


_colx = instance_place(x + velh, y, obj_chao)
_coly = instance_place(x, y + velv, obj_chao)

if (_colx)
{
	//Colisão a direita
	if (velh > 0)
	{
		x = _colx.bbox_left + (x - bbox_right);
		
	}
//Colisão a esquerda
	if (velh < 0)
	{
		x = _colx.bbox_right + (x - bbox_left);
		
	}
	
	velh = 0;
}

if (_coly)
{
		//Colisão a direita
	if (velv > 0)
	{
		y = _coly.bbox_top + (y - bbox_bottom);
		
	}
//Colisão a esquerda
	if (velv < 0)
	{
		y = _coly.bbox_bottom + (y - bbox_top);
		
	}
	
	velv = 0;
	
}

x += velh;
y += velv;
