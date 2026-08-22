if(!instance_exists(obj_companheira)) exit;
angulo += obj_companheira.velocidade_rotacao;

x = obj_companheira.x + lengthdir_x(obj_companheira.raio, angulo);
y = obj_companheira.y + lengthdir_y(obj_companheira.raio, angulo);

image_angle = angulo;