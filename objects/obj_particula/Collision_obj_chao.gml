//efeito de ricochete
move_bounce_solid(true);
	var s = audio_play_sound(snd_bola_quicando, 0, false);
		audio_sound_pitch(s, random_range(0.95, 1.05));

	
//destruindo se quicar mais de max vezes
if (quicada>=max_quicada) instance_destroy();
// condição que evita diversas colisões numa mesma colisão
if(colisaoparede) exit;
quicada++

//direction -= 25; // a original vai para o outro lado
//trava a colisao na parede um instante
colisaoparede = true; 
alarm [2] = 5;
