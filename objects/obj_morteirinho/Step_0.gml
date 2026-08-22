// Gira continuamente
angulo += vel_giro;

if (angulo >= 360)
    angulo -= 360;

image_angle = angulo;
if(vida<=0) {
playerupou(4);
if(instance_exists(obj_player)) 
		if(global.level>obj_player.level){ 
			instance_create_layer(0, 0, "Tela", obj_levelup);
			obj_player.level=global.level;
		}
instance_destroy();
}