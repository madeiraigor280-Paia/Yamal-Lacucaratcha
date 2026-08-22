//ta na cutcene
if global.cutcene 
{
	//vai pra perto do player 
	x = lerp(x,room_width/2 - 30,0.01)
	if (x>=220) sprite_index = s_policial_parado;
}
else 
{
	//movimentacao do inimigos mesmo
}

