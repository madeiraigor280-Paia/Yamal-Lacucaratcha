if(instance_exists(obj_player)) dano = obj_player.dano;
other.vida-= dano;
if(instance_exists(obj_screenshake)) obj_screenshake.valor+=10;
var s = audio_play_sound(snd_pedecabra2, 0, false);
		audio_sound_pitch(s, random_range(0.95, 1.05));
//Duplicando e ricocheteando a particula
//efeito de ricochete
move_bounce_solid(true);
//destruindo se quicar mais de max vezes
if (quicada>=max_quicada) instance_destroy();
// condição que evita diversas colisões numa mesma colisão
if(colisaomorteiro) exit;
quicada++

//direction -= 25; // a original vai para o outro lado
//trava a colisao na parede um instante
colisaomorteiro = true; 
alarm [5] = 5;
