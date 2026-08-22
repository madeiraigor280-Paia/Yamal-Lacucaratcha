if(!instance_exists(obj_companheira)) exit;
if (other.colisaopolicial) exit;
var s = audio_play_sound(snd_faca, 0, false,2,0.45);
		audio_sound_pitch(s, random_range(0.95, 1.05));
		
alarm[0]= obj_companheira.duracao		

other.colisaopolicial = true;
other.image_blend=c_lime
other.alarm[2] = tempo;
other.alarm[0]= 5
if (instance_exists(obj_screenshake)) obj_screenshake.valor+=5;
dano = obj_companheira.dano;
other.vida-=dano;
if(obj_companheira.quantidade<obj_companheira.limite) {
	var _faquinha=instance_create_layer(x,y,"Particulas",obj_particula_3);
	obj_companheira.quantidade++
	_faquinha.alarm[0]=obj_companheira.duracao
}
