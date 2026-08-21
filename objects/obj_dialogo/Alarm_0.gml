
if inicializar == true{
if caractere < string_length(texto_grid[# Infos.Texto, pagina]){
	//var _snd = choose(snd_npc1, snd_npc2, snd_npc3, snd_npc4);
	var _snd = meu_sound
	
	audio_play_sound(_snd, 1, 0);
	
	caractere++;
	alarm[0] = 1;
	}
}