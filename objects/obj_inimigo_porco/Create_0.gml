// Inherit the parent event
event_inherited();
estado = "normal";

pega_bomba = false;

//Personalizando as variáveis
//Ele vai decidir se ele pode andar para a direita ou para a esquerda
vel = choose(1, -1);

andando = choose(true, false);

if (andando)
{
	//Escolhendo a direção se ele decidiu andar
	if (andando)
	{
		velh = choose(vel, -vel);
	}
	else
	{
		velh = 0;	
	}

	
}
tempo_decidir_andar = room_speed * 3;