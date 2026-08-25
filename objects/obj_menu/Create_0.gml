//Iniciando meu menu
menu = [];

qtd = 7;
//Preenchendo meu menu

for (var i = 0; i < qtd; i++)
{
	menu[i] = "TEXTO" + string(i);	
	
}

menu = ["Jogar", "Opcoes", "Tutorial", "Sair", "Creditos", "Curiosidades", "Mensagens"]
menu_2 = ["Inicio rapido", "Entenda o jogo", "Mexer nas configuracoes", "Fechar o jogo", "Quem fez o jogo", "Entender os devs", "Veja o que queremos falar "]

//Posição seleciona do meu menu
indice = 3;

//Posição espacial do meu menu
pos = indice;

//Definindo largura e altura da borda
//Valores finais
larg_fim = 292;
alt_fim = 96;

esticando = false;

//Valores atuais
larg = larg_fim;
alt = alt_fim;

//Valores quando ele não está selecionado
larg_ini = larg_fim / 2;
alt_ini = alt_fim / 2;