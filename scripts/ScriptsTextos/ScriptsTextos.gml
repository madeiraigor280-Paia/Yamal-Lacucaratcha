function scr_textos(){
	switch npc_nome{
		
		case "Primeiro Texto":
		
		//Aqui pede 4 argumentos, um texto, um retrato, o lado e o nome
		//Tentar colocar a voz depois
		ds_grid_add_text("Primeiro texto teste", spr_retrato, 1, "Personagem 2");
		
		ds_grid_add_text("Olá, nunca vi você, o que faz aqui ?", spr_retrato, 0, "Personagem 1");
		ds_grid_add_text("Não sei, me tacaram aqui, um cara misterioso que nunca  vi", spr_retrato_player, 1, "Personagem 2");
		ds_grid_add_text("Bem, voce teve o mesmo destino de todos, não mudou nada", spr_retrato, 0, "Personagem 1");
		ds_grid_add_text("Que, como assim 'todos ?'", spr_retrato_player, 1, "Personagem 2");
			add_op("Quem são essas pessoas ?", "Resposta 1")
			add_op("Você mora aqui ?", "Resposta 2")
			add_op("Que lugar é esse ?", "Resposta 3")
			add_op("Sair", "Sair")
		
		break;	
			case "Resposta 1":
				ds_grid_add_text("Não sei quem são, sempre aparecem aqui, tem um cara que taca musica nos outros destruindo tudo", spr_retrato, 0, "Personagem 1");
				ds_grid_add_text("Destruindo tudo ? Esse cara que solta musica vai fazer nada", spr_retrato_player, 1, "Personagem 2");
				
				//add_op("Primeira Opção so que com mais texto", "Resposta 1")
				add_op("Você mora aqui ?", "Resposta 2")
				add_op("Que lugar é esse ?", "Resposta 3")
				add_op("Sair", "Sair")
				
			//Podemos adicionar valores para cada resposta
			//bom += 1
		
			break;
			case "Resposta 2":
				ds_grid_add_text("Não, fui jogado aqui faz tempo, não lembro nem quem foi o homem que me tacou nesse terror ", spr_retrato, 0, "Personagem 1");
				ds_grid_add_text("Eu também não lembro, mas voce sabe de alguma pista ?", spr_retrato_player, 1, "Personagem 2");
				ds_grid_add_text("Não, nunca passei por medo daquele monstro de fone... ", spr_retrato, 0, "Personagem 1");
				add_op("Quem são essas pessoas ?", "Resposta 1")
				//add_op("Segunda Opção, voce vai pagar", "Resposta 2")
				add_op("Que lugar é esse ?", "Resposta 3")
				add_op("Sair", "Sair")
		
		
			break;
		
			case "Resposta 3":
				ds_grid_add_text("Não sabemos, parece ser um purgatorio, tenho medo das coisas que tem mais pra frente", spr_retrato, 0, "Personagem 1");
				ds_grid_add_text("Bem, tenho que explorar então, vou me vingar de todos", spr_retrato_player, 1, "Personagem 2");
				add_op("Quem são essas pessoas ?", "Resposta 1")
				add_op("Você mora aqui ?", "Resposta 2")
				add_op("Sair", "Sair")
				//add_op("Segunda Opção, voce vai pagar", "Resposta 2")
				
				//add_op("Terceira Opção, Acho que ele esta cansado", "Resposta 3")
		
		
		
			break;
			
			case "Sair":
				
				var _dialogo = obj_dialogo
				
				_dialogo.me_destruo = true
				global.dialogo = false
				instance_destroy(_dialogo)
				
			
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