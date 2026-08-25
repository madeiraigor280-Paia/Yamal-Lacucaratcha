//Alterando as opções do menu
var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);

var _input = _down - _up;

//Se alguem apertou alguma coisa

if (_input != 0)
{
	indice += _input
	
	//Definindo a larg e alt para o valor inicial
	larg = larg_ini;
	alt = alt_ini
	
	//Tocando o som
	audio_play_sound(snd_opcao, 0, 0, , , .5 + indice * .1);
	
	esticando = true;
}

//Voltando para o começo do menu se eu terminei ele 
if (indice > qtd - 1) indice = 0;

if (indice < 0) indice = qtd-1;

var _fazer = pos == clamp(pos, indice - .1, indice + .1)

//Só começo a crescer SE eu já estou selecionado de fato
if (_fazer)
{
	larg = lerp(larg, larg_fim, .3)
}

//Fazendo a altura só crescer depois da largura
if (larg > larg_fim - 4)
{
	//Tocando o som
	if (esticando)
	{
		//Tocando o som
		audio_play_sound(snd_estica, 0, 0, , , .5 + indice * .1);
		esticando = false;
	}
	
	alt = lerp(alt, alt_fim, .1)	
}

//Fazendo o pos chegar ao indice
pos = lerp(pos, indice, .1)



//pos = tween(pos, "indice", indice)