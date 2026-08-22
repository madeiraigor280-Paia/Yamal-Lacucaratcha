instance_destroy();
if(other.invencivel) exit;
var s = audio_play_sound(snd_pedecabra2, 0, false);
		audio_sound_pitch(s, random_range(0.95, 1.05));
other.vida-= dano;
obj_screenshake.ang = 10;
obj_screenshake.valor +=2;