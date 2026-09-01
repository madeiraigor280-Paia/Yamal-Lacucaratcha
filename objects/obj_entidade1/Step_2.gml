// 🔧 ADIÇÃO MINIMAL: Atualiza posição e corrige colisão
//x += velh;
//y += velv;

//if (place_meeting(x, y, obj_block))
//{
  //  x -= velh;
    //y -= velv;
    //velv = 0;
//}

//Passando o mid velh para o velh enquanto for menor que o limite
if (abs(velh) <= max_velh)
{
	velh += mid_velh;	
	
}
else
{
	velh = 0;	
	
	
}



// Sistema de colisão e movimentação (pixel-perfect)
var _velh = sign(velh);
var _velv = sign(velv);



// Movimento horizontal
repeat(abs(velh))
{
    if (place_meeting(x + _velh, y, obj_chao))
    {
        velh = 0;
        break;
    }
    x += _velh;
}

// Movimento vertical
repeat(abs(velv))
{
    if (place_meeting(x, y + _velv, obj_chao))
    {
        velv = 0;
        break;
    }
    y += _velv;
}

// Atualiza "chao" APÓS o movimento vertical
chao = place_meeting(x, y + 1, obj_chao);
