//Não estou em uma sequencia ?
//E fui criado em uma sequencia

andando();


//if (tempo_andando <= 0)
//{
//	var _escolha = choose(hspeed, -hspeed)
	
//	hspeed = _escolha;
	
	
//	tempo_andando = choose(500, 800)
	
//}

if (vida <= 0)
{
	morrendo()	
	
}

if (timer_dano >= tempo_dano)
{
		alpha = 1;
		
}
else
{
		alpha = 0;	
}

timer_dano--;

