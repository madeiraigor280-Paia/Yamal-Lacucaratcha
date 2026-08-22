//Duplicando e ricocheteando a particula
// evita a mesma partícula dividir várias vezes no player
if (global.cutcene || global.dialogo) exit;
if (colisaoplayer) exit;
if(other.invencivel) exit;

var s = audio_play_sound(snd_pedecabra2, 0, false);
		audio_sound_pitch(s, random_range(0.95, 1.05));
if(instance_exists(obj_screenshake))obj_screenshake.ang+=10;
other.vida-=dano;
var ang1 = choose(direction - 35,direction+35);
    // a original abre para o outro lado
direction = ang1;
	//trava a colisao no player um instante
colisaoplayer = true;
alarm [1] = 10;
quicada++;


if (familia.divisoes < familia.max_divisoes)
{
    familia.divisoes++;
	var _ang1 = direction-35;
    var ang2 = direction + 35;

    var particula2 = instance_create_layer(x, y, "Particulas", obj_particula_2);

    particula2.familia = familia;
	//linha que pode dar ruim, talvez tenha que passar em outro lugar
    particula2.pode_colidir = true;

    // uma abre para um lado
    particula2.direction = ang2;
    particula2.speed = speed;

    // a original abre para o outro lado
    direction = _ang1;
	//trava a colisao no player um instante
    colisaoplayer = true;
    particula2.colisaoplayer = true;
	alarm [1] = 10;
	particula2.alarm[1] = 10;
}
//destruindo se quicar mais de max vezes
if (quicada >= max_quicada)instance_destroy();