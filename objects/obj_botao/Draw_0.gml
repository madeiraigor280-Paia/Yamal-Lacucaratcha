//ME desenhando

draw_self()

//Alinhando o texto
draw_set_halign(1)
draw_set_valign(1)

//Configurando a fonte
draw_set_colour(cor)

draw_set_font(fnt_dialogo)

//Desenhando o texto em escala
draw_text_transformed(x, y, texto, escala_texto, escala_texto, image_angle)

//Restando os draw set
draw_set_font(-1)
draw_set_colour(-1)
draw_set_halign(-1)
draw_set_valign(-1)