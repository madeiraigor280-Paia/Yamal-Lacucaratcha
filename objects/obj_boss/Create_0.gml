// Inherit the parent event
event_inherited();

audio_play_sound(snd_boss_touro, 2, 0)
//Adicionando os atributos do boss
vida_max = 7 * global.dificuldade;
vida_max = 7 * global.dificuldade
vida_atual = vida_max;

max_velh = 5;
max_velv = 5;

timer_estado = 0;
ataque = 1 * global.dificuldade;

massa = 3;

taunt_delay = room_speed * 2
taunt_timer = taunt_delay;

dano = noone;

//Substate
ataque = irandom(2); //0, 1,2 

fui_criado_sensor = false;