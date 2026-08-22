//Duplicando e ricocheteando a particula
// evita a mesma partícula dividir várias vezes no player
if (colisaocutcene) exit;
var s = audio_play_sound(snd_pedecabra2, 0, false);
		audio_sound_pitch(s, random_range(0.95, 1.05));
if(instance_exists(obj_screenshake))if (instance_exists(obj_screenshake)) obj_screenshake.valor += 5;
var ang1 = choose(direction - 35,direction+35);
    // a original abre para o outro lado
direction = ang1;
	//trava a colisao no player um instante
colisaocutcene = true;
alarm [4] = tempo;
quicada++;
//destruindo se quicar mais de max vezes
if (quicada >= max_quicada)instance_destroy();