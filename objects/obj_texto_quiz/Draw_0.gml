//ME desenhando

draw_self()

//Alinhando o texto
draw_set_halign(1)
draw_set_valign(1)

//Configurando a fonte
draw_set_colour(cor)

draw_set_font(fnt_dialogo)

//Desenhando o texto em escala
//draw_text_transformed(x, y, texto, escala_texto, escala_texto, image_angle)

//draw_text_colour(x, y, texto, cor, cor1, cor2, valor_cor, 1)

//draw_text_ext_colour(x, y, texto, escala_texto, escala_texto, cor, cor1, cor2, valor_cor, valor_cor)

draw_text_transformed_colour(x, y, texto, tamanho_texto, tamanho_texto, 0, cor, cor1, cor2, valor_cor, 1);

//Restando os draw set
draw_set_font(-1)
draw_set_colour(-1)
draw_set_halign(-1)
draw_set_valign(-1)