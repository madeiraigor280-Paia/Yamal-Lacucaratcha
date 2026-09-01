// Inherit the parent event
event_inherited();


//Adicionando os atributos do boss
vida_max = 20 * global.dificuldade;
vida_max = 6 * global.dificuldade
vida_atual = vida_max;

max_velh = 3;
max_velv = 3;

timer_estado = 0;
ataque = 1 * global.dificuldade;

massa = 3;

taunt_delay = room_speed * 2
taunt_timer = taunt_delay;

//Substate
ataque = irandom(2); //0, 1,2 
