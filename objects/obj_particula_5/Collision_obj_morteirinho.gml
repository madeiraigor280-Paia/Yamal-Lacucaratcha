other.vida-=dano/2;
if(instance_exists(obj_screenshake)) obj_screenshake.valor+=5;
var s = audio_play_sound(snd_pedecabra2, 0, false);
		audio_sound_pitch(s, random_range(0.95, 1.05));
//Duplicando e ricocheteando a particula
//efeito de ricochete
move_bounce_solid(true);
quicada++
//destruindo se quicar mais de max vezes
if (quicada>=max_quicada) instance_destroy();
// condição que evita diversas colisões numa mesma colisão
if(colisaomorteiro) exit;

//condicional que verifica se a partícula atingiu seu limite de divisões
if (familia.divisoes < familia.max_divisoes){
familia.divisoes++;
//criando a particula 2
var particula2 = instance_create_layer(x, y, "Particulas", obj_particula_5);
//propriedades da particula 2
particula2.familia = familia;
particula2.pode_colidir=true;
particula2.direction = direction + 25; // 25° para um lado
particula2.speed = speed;
direction -= 25; // a original vai para o outro lado
//trava a colisao na parede um instante
colisaomorteiro = true; 
particula2.colisaomorteiro = true;
alarm [2] = 5;
particula2.alarm[2] = 5;
}