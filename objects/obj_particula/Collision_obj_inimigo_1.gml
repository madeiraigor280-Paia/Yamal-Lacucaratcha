if (other.colisaonave) exit;
	
quicada++;
var s = audio_play_sound(snd_pulo, 0, false);
		audio_sound_pitch(s, random_range(0.95, 1.05));


other.tomo_dano()
other.colisaonave = true;
other.timer_dano = other.tempo_dano
other.alpha = 1;

other.alarm[2] = tempo;
other.alarm[0]=5
//if(instance_exists(obj_player)) dano = obj_player.dano;
other.alvo= obj_player;
// guarda o porco que acabou de ser atingido
var atingido = other.id;

var _valor_screen = irandom_range(5, 10)
if (!instance_exists(obj_screenshake)) screenshake(_valor_screen)

//atingido.dano = true;

// adiciona somente se ainda não estiver na lista
if (ds_list_find_index(alvos_acertados, atingido) == -1)
{
    ds_list_add(alvos_acertados, atingido);
}

var alvo = noone;
var menor = range;

for (var i = 0; i < instance_number(obj_inimigo_1); i++)
{
    var p = instance_find(obj_inimigo_1, i);

    // ignora quem acabou de bater
    if (p.id == atingido)
        continue;

    // ignora quem já foi atingido
    if (ds_list_find_index(alvos_acertados, p.id) != -1)
        continue;

    var d = point_distance(x, y, p.x, p.y);

    if (d < menor)
    {
        menor = d;
        alvo = p;
    }
}

if (alvo != noone)
{
    var dir = point_direction(x, y, alvo.x, alvo.y);

    direction = dir;
}

else direction+=choose(35,-35);
if (quicada >= max_quicada)
    instance_destroy();