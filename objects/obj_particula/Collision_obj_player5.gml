//Duplicando e ricocheteando a particula
// evita a mesma partícula dividir várias vezes no player
if(global.facil) exit;
if(other.invencivel) exit;
if (colisaoplayer) exit;
//evita que o player se atire no inicio
if (pode_colidir==false) exit;
var s = audio_play_sound(snd_pedecabra2, 0, false);
		audio_sound_pitch(s, random_range(0.95, 1.05));
if(instance_exists(obj_screenshake))obj_screenshake.ang+=10;
other.vida-=other.dano;
var ang1 = choose(direction - 35,direction+35);
    // a original abre para o outro lado
direction = ang1;
	//trava a colisao no player um instante
colisaoplayer = true;
alarm [1] = tempo;
quicada++;
//destruindo se quicar mais de max vezes
if (quicada >= max_quicada)instance_destroy();