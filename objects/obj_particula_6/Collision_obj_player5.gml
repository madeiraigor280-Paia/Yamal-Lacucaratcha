//Duplicando e ricocheteando a particula
// evita a mesma partícula dividir várias vezes no player
if (global.cutcene || global.dialogo) exit;
if(other.invencivel) exit;

var s = audio_play_sound(snd_pedecabra2, 0, false);
		audio_sound_pitch(s, random_range(0.95, 1.05));
if(instance_exists(obj_screenshake)) obj_screenshake.ang+=10;
other.vida-=dano;
instance_destroy();