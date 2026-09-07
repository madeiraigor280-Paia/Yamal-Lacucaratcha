function scr_textos(){
	switch npc_nome{
		
		case "Primeiro Texto":
		
		//Aqui pede 4 argumentos, um texto, um retrato, o lado e o nome
		//Tentar colocar a voz depois
		ds_grid_add_text("Olá, você está no tutorial, se você quer pular a fala do dialogo aperte Z", spr_retrato, 1, "Pedri");
		ds_grid_add_text("Aperte F para conversar e avançar o dialogo, cuidado, muitos textos podem serem importantes para a história do jogo", spr_retrato, 1, "Pedri");
		ds_grid_add_text("W e S para mudar de resposta.", spr_retrato, 1, "Pedri");
		
		ds_grid_add_text("Olá, quem seria você ?", spr_yamal_dialogo, 0, "Yamal");
		ds_grid_add_text("Hahahaha, jogue e descubra", spr_retrato, 1, "Pedri");
			add_op("O que podemos fazer ?", "Resposta 1")
			add_op("Sair", "Sair")
		
		break;	
			case "Resposta 1":
				ds_grid_add_text("Bem, mate os porcos e tente ganhar a copa por nós", spr_retrato, 1, "Pedri");
				ds_grid_add_text("Irei dar o melhor melhor!!", spr_yamal_dialogo, 0, "Yamal");
				
				//add_op("Primeira Opção so que com mais texto", "Resposta 1")
				//add_op("Você mora aqui ?", "Resposta 2")
				//add_op("Que lugar é esse ?", "Resposta 3")
				add_op("Sair", "Sair")
				
			//Podemos adicionar valores para cada resposta
			//bom += 1
		
			break;
			//case "Resposta 2":
			//	ds_grid_add_text("Não, fui jogado aqui faz tempo, não lembro nem quem foi o homem que me tacou nesse terror ", spr_retrato, 0, "Personagem 1");
			//	ds_grid_add_text("Eu também não lembro, mas voce sabe de alguma pista ?", spr_retrato_player, 1, "Personagem 2");
			//	ds_grid_add_text("Não, nunca passei por medo daquele monstro de fone... ", spr_retrato, 0, "Personagem 1");
			//	add_op("Quem são essas pessoas ?", "Resposta 1")
			//	//add_op("Segunda Opção, voce vai pagar", "Resposta 2")
			//	add_op("Que lugar é esse ?", "Resposta 3")
			//	add_op("Sair", "Sair")
		
		
			//break;
		
			//case "Resposta 3":
			//	ds_grid_add_text("Não sabemos, parece ser um purgatorio, tenho medo das coisas que tem mais pra frente", spr_retrato, 0, "Personagem 1");
			//	ds_grid_add_text("Bem, tenho que explorar então, vou me vingar de todos", spr_retrato_player, 1, "Personagem 2");
			//	add_op("Quem são essas pessoas ?", "Resposta 1")
			//	add_op("Você mora aqui ?", "Resposta 2")
			//	add_op("Sair", "Sair")
			//	//add_op("Segunda Opção, voce vai pagar", "Resposta 2")
				
			//	//add_op("Terceira Opção, Acho que ele esta cansado", "Resposta 3")
		
		
		
			//break;
			
			case "Sair":
				
				var _dialogo = obj_dialogo
				
				_dialogo.me_destruo = true
				global.dialogo = false
				instance_destroy(_dialogo)
				
			
			break;
		
		
		case "Boss":
		
			ds_grid_add_text("Ferrou, acho que estamos perdidos!!! O messi está enfurecido", spr_retrato, 1, "Pedri");
			ds_grid_add_text("Se você estiver pronto, aperte Y para provocar ele", spr_retrato, 1, "Pedri");
		
		ds_grid_add_text("Como eu posso derrotar ele?", spr_yamal_dialogo, 0, "Yamal");
		ds_grid_add_text("Não temos tempo, atire as bolas nele", spr_retrato, 1, "Pedri");
			add_op("Se eu derrotar ele eu ganho  ?", "Resposta 2")
			add_op("Sair", "Sair")
		
		break;	
			
			
			case "Resposta 2":
				ds_grid_add_text("Sim!, se você derrotar ele você consegue voltar para a terra", spr_retrato, 1, "Pedri");
				ds_grid_add_text("Vou fazer ele e o infantino pagar!!!", spr_yamal_dialogo, 0, "Yamal");
				
				//add_op("Primeira Opção so que com mais texto", "Resposta 1")
				//add_op("Você mora aqui ?", "Resposta 2")
				//add_op("Que lugar é esse ?", "Resposta 3")
				add_op("Sair", "Sair")
			
			
			
		
		break;
	}

}

function ds_grid_add_row(){

	///arg ds_grid
	var _grid = argument[0];
	ds_grid_resize( _grid,ds_grid_width( _grid),ds_grid_height( _grid)+1);
	return(ds_grid_height( _grid)-1);
}

function ds_grid_add_text(){
////@arg texto 
////@arg retrato 
////@arg lado
var _grid = texto_grid;
var _y = ds_grid_add_row(_grid);

	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
	_grid[# 4, _y] = argument[3];

}
	
	
function add_op(_texto, _resposta){
	op[op_num] = _texto;
	op_resposta[op_num] = _resposta;
	
	op_num++
}


function minha_voz(_meu_som)
{
if (instance_exists(obj_dialogo))
{
	with(obj_dialogo)
	{
		meu_sound = _meu_som
	
	}
}	
	
	
}