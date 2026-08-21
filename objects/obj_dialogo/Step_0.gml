//Quando criar o dialogo vou iniciar como false
//Vai acessar o scr Textos
//Pegar o case do texto do npc




if inicializar == false{
	scr_textos();
	inicializar = true;
	alarm[0] = 1;
	
}



if me_destruo == false
if caractere < string_length(texto_grid[# Infos.Texto, pagina]){
	if keyboard_check_pressed(ord("Z")){
		caractere = string_length(texto_grid[# Infos.Texto, pagina]);
		}
}else{
		
		
	if pagina < ds_grid_height(texto_grid) - 1{
		if global.tecla{
			alarm[0] = 1;
			caractere = 0;
		
			pagina++;	
		}	
	}else{
		//Se tiver opção, vamos poder desenhar as opções
		if op_num != 0{
			op_draw = true;
			
			
			
		}else{
			if global.tecla{
				global.dialogo = false;
				instance_destroy()
			}
			}
		
		}
	}	
	
