if(global.dificil)
image_speed=1;
else image_speed = 0.75

var distancia = 5;

// Tiro 1
var dir1 = angulo+90;

// Tiro 2, exatamente no lado oposto
var dir2 = angulo + 270;

var p1 = instance_create_layer(
    x + lengthdir_x(distancia, dir1),
    y + lengthdir_y(distancia, dir1),
    "Particulas",
    obj_particula_6
);

p1.direction = dir1;
p1.speed=attack_speed

// Segundo tiro
var p2 = instance_create_layer(
    x + lengthdir_x(distancia, dir2),
    y + lengthdir_y(distancia, dir2),
    "Particulas",
    obj_particula_6
);

p2.direction = dir2;
p1.direction = dir1;
p1.speed=attack_speed
p2.speed=attack_speed

// Agenda o próximo disparo
alarm[0] = cooldown;