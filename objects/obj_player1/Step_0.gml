/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Rodando meu estado
estado();


if (velh != 0) image_xscale = sign(velh);
var _col = layer_tilemap_get_id("bg_col");
move_and_collide(velh, 0, _col, 12);
move_and_collide(0, velv, _col, 24);