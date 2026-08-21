draw_sprite_ext(spr_morango, (get_timer()/ 1000000) * 10, 30, 120, 3, 3, 0, c_white, 1)

draw_set_font(fnt_vidaboss_2);

draw_set_colour(c_white);

draw_text(40, 120, "x" + string(global.morangos))


draw_set_font(-1);

draw_set_colour(c_white);

