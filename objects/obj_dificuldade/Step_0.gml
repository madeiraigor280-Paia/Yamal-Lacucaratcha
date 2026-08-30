var _left = keyboard_check_pressed(vk_left)
var _right = keyboard_check_pressed(vk_right)

var _espaco = keyboard_check_pressed(vk_space)

if (_left)
{
	atual--;
	atual = clamp(atual, 0, 2)
	
	global.dificuldade--;
	global.dificuldade = clamp(global.dificuldade, 1, 3)
	
	
}

if (_right)
{
	atual++;
	atual = clamp(atual, 0, 2)
	global.dificuldade++;
	global.dificuldade = clamp(global.dificuldade, 1, 3)
	
	
}

if (_espaco)
{
	
	transicao_simples(rm_tela_boss)	
}


show_debug_message(global.dificuldade)