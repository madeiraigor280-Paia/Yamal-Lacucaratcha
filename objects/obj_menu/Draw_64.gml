//Desenhando o texto do meu menu

//Definindo o diametro ? do menu
var _larg = 360 / qtd;


for (var i = 0; i < qtd; i++)
{
	var _dir = (i - pos) * _larg
	//Posição dele
	//Posso mudar a formula dele aqui
	var _tam = 200;
	var _x = room_width - lengthdir_x(_tam, _dir) 
	var _y = room_height / 2 + (i - pos) * 100;
	var _cor = c_black;
	var _w = larg_ini;
	var _h = alt_ini;
	var _txt = "";
	var _margem = 0;
	
	//Descobrindo quem está sendo selecionado agora
	if (i == indice)
	{
		_cor = c_blue;
		_w = larg;
		_h = alt;
		
		if (larg > larg_fim - 4)
		{
			_txt = menu_2[i];
			//_txt = "Texto secundario";
			_margem = alt / 4;
		}
		
		
	}
	
	//Desenhando a borda
	draw_sprite_stretched(spr_bordinha, 0, _x - _w /2, _y - _h/2, _w, _h);
	draw_set_font(fnt_dialogo);
	
	draw_set_halign(1)
	draw_set_valign(1)
	draw_set_colour(_cor)
	
	//Texto primário
	draw_text(_x, _y - _margem, menu[i]);
	
	//Texto secundario
	draw_set_colour(c_black)
	draw_text_transformed(_x, _y + 10, _txt, .8, .8, 0);
	
	//Resetando os draw set
	draw_set_font(-1)
	draw_set_colour(-1)
	draw_set_halign(-1)
	draw_set_valign(-1)
	
}