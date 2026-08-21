enum Infos{
	Texto,
	Retrato,
	Lado,
	Nome,
	Voz
	
}

npc_nome = "";
texto_grid = ds_grid_create(4, 0)
pagina = 0;

//Opção
op[0] = "";
//Selecionar uma opção, quando clicar em uma opção saber qual texto ir depois
op_resposta[0] = "";
//Saber quantas opções te,
op_num = 0;
//Saber qual op eu selecionei
op_selecionada = 0;
//Saber se temos que desenhar ou não
op_draw = false;

inicializar = false;

caractere	= 0;
alarm[0] = 1;

me_destruo = false;

meu_sound = snd_npc5