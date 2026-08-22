if(global.dificil==false&&morri) instance_destroy();
image_speed=0;
angulo = 0;
if(global.dificil)
vida=8;
else
vida=6;

// Velocidade que ele gira
vel_giro = 2;

// Tempo entre os disparos
if(global.dificil)
cooldown = 15;
else
cooldown= 30;


if(global.dificil)
attack_speed=3;
else
attack_speed=2.5
// Inicializa o disparo
alarm[0] = cooldown;