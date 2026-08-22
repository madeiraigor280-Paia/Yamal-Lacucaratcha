//Duplicando e ricocheteando o a particula
// evita a mesma partícula dividir várias vezes no policial
if (other.colisaopolicial) exit;
var s = audio_play_sound(snd_pedecabra2, 0, false);
		audio_sound_pitch(s, random_range(0.95, 1.05));
obj_screenshake.valor+=5;
other.vida-=dano;
other.colisaopolicial = true;
other.image_blend=c_yellow
other.alarm[2] = 5;
other.alarm[0] = 5;
var ang1 = choose(direction - 35,direction+35);
    // a original abre para o outro lado
direction = ang1;
quicada++;

if (familia.divisoes < familia.max_divisoes)
{
    familia.divisoes++;
	quicada++;

    var _ang1 = direction - 35;
    var ang2 = direction + 35;

    var particula2 = instance_create_layer(x, y, "Particulas", obj_particula_5);

    particula2.familia = familia;
    particula2.pode_colidir = true;

    // uma abre para um lado
    particula2.direction = ang2;
    particula2.speed = speed;

    // a original abre para o outro lado
    direction = _ang1;
	
	//trava a colisao no policial um instante
    other.colisaopolicial = true;
	other.alarm [0] = 5;
}
//destruindo se quicar mais de max vezes
if (quicada >= max_quicada) instance_destroy();